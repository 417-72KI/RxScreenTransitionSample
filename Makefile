init:
	mkdir -p Libs/R.swift
	carthage bootstrap --platform iOS --cache-builds
	pod install
