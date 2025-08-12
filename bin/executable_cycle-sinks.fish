#!/usr/bin/env fish

function get_sink_name
    string split -f2 -n \t $argv[1]
end

set -l current_sink_name (pactl get-default-sink)
set -l sinks (pactl list short sinks)
set -l sink_count (count $sinks)

for i in (seq $sink_count)
    if test (get_sink_name $sinks[$i]) = $current_sink_name
        set -l next_sink_index (math $i % $sink_count + 1)
        pactl set-default-sink (get_sink_name $sinks[$next_sink_index])
        break
    end
end
