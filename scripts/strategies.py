xeda_strategies = {
    "Debug": {
        "synth": {
            "-assert": None,
            "-debug_log": None,
            "-flatten_hierarchy": "none",
            "-keep_equivalent_registers": None,
            "-no_lc": None,
            "-fsm_extraction": "off",
            "-directive": "RuntimeOptimized",
        },
        "opt": {"-directive": "RuntimeOptimized"},
        "place": {"-directive": "RuntimeOptimized"},
        "place_opt": {},
        "route": {"-directive": "RuntimeOptimized"},
        "phys_opt": {"-directive": "RuntimeOptimized"},
    },
    "Runtime": {
        "synth": {"-directive": "RuntimeOptimized"},
        "opt": {"-directive": "RuntimeOptimized"},
        "place": {"-directive": "RuntimeOptimized"},
        "place_opt": {},
        # with -ultrathreads results are not reproducible!
        # OR "-no_timing_driven -ultrathreads",
        "route": {"-directive": "RuntimeOptimized"},
        "phys_opt": {"-directive": "RuntimeOptimized"},
    },
    "Default": {
        "synth": {"-flatten_hierarchy": "rebuilt", "-directive": "Default"},
        "opt": {"-directive": "ExploreWithRemap"},
        "place": {"-directive": "Default"},
        "place_opt": {},
        "route": {"-directive": "Default"},
        "phys_opt": {"-directive": "Default"},
    },
    "Timing": {
        # -mode: default, out_of_context
        # -flatten_hierarchy: rebuilt, full; equivalent in terms of QoR?
        # -no_lc: When checked, this option turns off LUT combining
        # -keep_equivalent_registers -no_lc
        "synth": {
            "-flatten_hierarchy": "rebuilt",
            "-retiming": None,
            "-directive": "PerformanceOptimized",
            "-fsm_extraction": "one_hot",
            #   "-resource_sharing off",
            #   "-no_lc",
            "-shreg_min_size": "5",
            #   "-keep_equivalent_registers "
        },
        "opt": {"-directive": "ExploreWithRemap"},
        "place": {"-directive": "ExtraPostPlacementOpt"},
        "place_opt": {
            "-retarget": None,
            "-propconst": None,
            "-sweep": None,
            "-aggressive_remap": None,
            "-shift_register_opt": None,
        },
        "phys_opt": {"-directive": "AggressiveExplore"},
        "place_opt2": {"-directive": "Explore"},
        # "route": "-directive NoTimingRelaxation",
        "route": {"-directive": "AggressiveExplore"},
    },
    "ExtraTimingCongestion": {
        "synth": {
            "-flatten_hierarchy": "full",
            "-retiming": None,
            "-directive": "PerformanceOptimized",
            "-fsm_extraction": "one_hot",
            "-resource_sharing": "off",
            "-shreg_min_size": "10",
            "-keep_equivalent_registers": None,
        },
        "opt": {"-directive": "ExploreWithRemap"},
        "place": {"-directive": "AltSpreadLogic_high"},
        "place_opt": {
            "-retarget": None,
            "-propconst": None,
            "-sweep": None,
            "-remap": None,
            "-muxf_remap": None,
            "-aggressive_remap": None,
            "-shift_register_opt": None,
        },
        "place_opt2": {"-directive": "Explore"},
        "phys_opt": {"-directive": "AggressiveExplore"},
        "route": {"-directive": "AlternateCLBRouting"},
    },
    "ExtraTiming": {
        "synth": {
            "-flatten_hierarchy": "full",
            "-retiming": None,
            "-directive": "PerformanceOptimized",
            "-fsm_extraction": "one_hot",
            "-resource_sharing": "off",
            #   "-no_lc",
            "-shreg_min_size": "10",
            "-keep_equivalent_registers": None,
        },
        "opt": {"-directive": "ExploreWithRemap"},
        "place": {"-directive": "ExtraTimingOpt"},
        "place_opt": {
            "-retarget": None,
            "-propconst": None,
            "-sweep": None,
            "-muxf_remap": None,
            "-aggressive_remap": None,
            "-shift_register_opt": None,
        },
        "place_opt2": {"-directive": "Explore"},
        "phys_opt": {"-directive": "AggressiveExplore"},
        "route": {"-directive": "NoTimingRelaxation"},
    },
    "ExtraTimingAltRouting": {
        # -mode: default, out_of_context
        # -flatten_hierarchy: rebuilt, full; equivalent in terms of QoR?
        # -no_lc: When checked, this option turns off LUT combining
        # -keep_equivalent_registers -no_lc
        "synth": {
            "-flatten_hierarchy": "full",
            "-retiming": None,
            "-directive": "PerformanceOptimized",
            "-fsm_extraction": "one_hot",
            #   "-resource_sharing off",
            #   "-no_lc",
            "-shreg_min_size": "5",
            "-keep_equivalent_registers": None,
        },
        "opt": {"-directive": "ExploreWithRemap"},
        "place": {"-directive": "ExtraTimingOpt"},
        "place_opt": {
            "-retarget": None,
            "-propconst": None,
            "-sweep": None,
            "-aggressive_remap": None,
            "-shift_register_opt": None,
        },
        "phys_opt": {"-directive": "AggressiveExplore"},
        # "route": "-directive NoTimingRelaxation",
        "route": {"-directive": "AlternateCLBRouting"},
    },
    "Area": {
        # AreaOptimized_medium or _high prints error messages in Vivado 2020.1: "unexpected non-zero reference counts", but succeeeds and post-impl sim is OK too
        "synth": {
            "-flatten_hierarchy": "full",
            "-control_set_opt_threshold": "1",
            "-shreg_min_size": "3",
            "-resource_sharing": "auto",
            "-directive": "AreaOptimized_medium",
        },
        # if no directive: -resynth_seq_area
        "opt": {"-directive": "ExploreArea"},
        "place": {"-directive": "Default"},
        "place_opt": {"-directive": "ExploreArea"},
        # "place_opt": {'-retarget', '-propconst', '-sweep', '-aggressive_remap', '-shift_register_opt',
        #               '-dsp_register_opt', '-bram_power_opt', '-resynth_seq_area', '-merge_equivalent_drivers'},
        # if no directive: -placement_opt
        "phys_opt": {"-directive": "Explore"},
        "route": {"-directive": "Explore"},
    },
    "AreaHigh": {
        # AreaOptimized_medium or _high prints error messages in Vivado 2020.1: "unexpected non-zero reference counts", but succeeeds and post-impl sim is OK too
        "synth": {
            "-flatten_hierarchy": "full",
            "-control_set_opt_threshold": "1",
            "-shreg_min_size": "3",
            "-resource_sharvng": "on",
            "-directive": "AreaOptimized_high",
        },
        # if no directive: -resynth_seq_area
        "opt": {"-directive": "ExploreArea"},
        "place": {"-directive": "Default"},
        "place_opt": {"-directive": "ExploreArea"},
        # "place_opt": {'-retarget', '-propconst', '-sweep', '-aggressive_remap', '-shift_register_opt',
        #               '-dsp_register_opt', '-bram_power_opt', '-resynth_seq_area', '-merge_equivalent_drivers'},
        # if no directive: -placement_opt
        "phys_opt": {"-directive": "Explore"},
        "route": {"-directive": "Explore"},
    },
    "AreaPower": {
        # AreaOptimized_medium or _high prints error messages in Vivado 2020.1: "unexpected non-zero reference counts", but succeeeds and post-impl sim is OK too
        "synth": {
            "-flatten_hierarchy": "full",
            "-control_set_opt_threshold": "1",
            "-shreg_min_size": "3",
            "-resource_sharing": "auto",
            "-gated_clock_conversion": "auto",
            "-directive": "AreaOptimized_medium",
        },
        "opt": {"-directive": "ExploreArea"},
        "place": {"-directive": "Default"},
        "place_opt": {
            "-retarget": None,
            "-propconst": None,
            "-sweep": None,
            "-aggressive_remap": None,
            "-shift_register_opt": None,
            "-dsp_register_opt": None,
            "-resynth_seq_area": None,
            "-merge_equivalent_drivers": None,
        },
        "place_opt2": {"-directive": "ExploreArea"},
        # FIXME!!! This is the only option that results in correct post-impl timing sim! Why??!
        "phys_opt": {"-directive": "AggressiveExplore"},
        "route": {"-directive": "Explore"},
    },
    "AreaTiming": {
        "synth": {"-flatten_hierarchy": "rebuilt", "-retiming": None},
        # if no directive: -resynth_seq_area
        "opt": {"-directive": "ExploreWithRemap"},
        "place": {"-directive": "ExtraPostPlacementOpt"},
        # "place_opt": {"-directive ExploreArea"},
        "place_opt": {
            "-retarget": None,
            "-propconst": None,
            "-sweep": None,
            "-aggressive_remap": None,
            "-shift_register_opt": None,
            "-dsp_register_opt": None,
            "-resynth_seq_area": None,
            "-merge_equivalent_drivers": None,
        },
        "place_opt2": {"-directive": "ExploreArea"},
        # if no directive: -placement_opt
        "phys_opt": {"-directive": "AggressiveExplore"},
        "route": {"-directive": "Explore"},
    },
    "AreaExploreWithRemap": {
        "synth": {"-flatten_hierarchy": "full", "-retiming": None},
        # if no directive: -resynth_seq_area
        "opt": {"-directive": "ExploreWithRemap"},
        "place": {"-directive": "Default"},
        "place_opt": {"-directive": "ExploreWithRemap"},
        # "place_opt": {'-retarget', '-propconst', '-sweep', '-aggressive_remap', '-shift_register_opt',
        #               '-dsp_register_opt', '-bram_power_opt', '-resynth_seq_area', '-merge_equivalent_drivers'},
        # if no directive: -placement_opt
        "phys_opt": {"-directive": "Explore"},
        "route": {"-directive": "Explore"},
    },
    "AreaExploreWithRemap2": {
        "synth": {"-flatten_hierarchy": "full", "-retiming": None},
        # if no directive: -resynth_seq_area
        "opt": {"-directive": "ExploreArea"},
        "place": {"-directive": "Default"},
        "place_opt": {"-directive": "ExploreWithRemap"},
        # "place_opt": {'-retarget', '-propconst', '-sweep', '-aggressive_remap', '-shift_register_opt',
        #               '-dsp_register_opt', '-bram_power_opt', '-resynth_seq_area', '-merge_equivalent_drivers'},
        # if no directive: -placement_opt
        "phys_opt": {"-directive": "Explore"},
        "route": {"-directive": "Explore"},
    },
    "AreaExplore": {
        "synth": {"-flatten_hierarchy": "full"},
        # if no directive: -resynth_seq_area
        "opt": {"-directive": "ExploreArea"},
        "place": {"-directive": "Default"},
        "place_opt": {"-directive": "ExploreArea"},
        # "place_opt": {'-retarget', '-propconst', '-sweep', '-aggressive_remap', '-shift_register_opt',
        #               '-dsp_register_opt', '-bram_power_opt', '-resynth_seq_area', '-merge_equivalent_drivers'},
        # if no directive: -placement_opt
        "phys_opt": {"-directive": "Explore"},
        "route": {"-directive": "Explore"},
    },
    "Power": {
        "synth": {
            "-flatten_hierarchy": "full",
            "-gated_clock_conversion": "auto",
            "-control_set_opt_threshold": "1",
            "-shreg_min_size": "3",
            "-resource_sharing": "auto",
        },
        # if no directive: -resynth_seq_area
        "opt": {"-directive": "ExploreSequentialArea"},
        "place": {"-directive": "Default"},
        "place_opt": {"-directive": "ExploreSequentialArea"},
        # {'-retarget', '-propconst', '-sweep', '-aggressive_remap', '-shift_register_opt',
        #   '-dsp_register_opt', '-bram_power_opt', '-resynth_seq_area', '-merge_equivalent_drivers'},
        # if no directive: -placement_opt
        "phys_opt": {"-directive": "Explore"},
        "route": {"-directive": "Explore"},
    },
}

for key in xeda_strategies.keys():
    print(key)