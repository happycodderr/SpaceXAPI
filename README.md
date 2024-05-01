# Space X API Project

    This is an iOS app that displays a list of companies and launches done by SpaceX and their information. The app is written in Swift and uses SDWebImages for downloading the images and the MVVM architecture with the Repository pattern.

## Project Description 

This shows a short list of companies and launches done by SpaceX after getting them from SpaceXData API (https://api.spacexdata.com/). On click of any launch we will be able get details about that launch through webcast, wikipedia or articles related to that particular launch.

## Table of Contents

In the structure files contains: Model, View, ViewModel, Network, Repository (with persistence file) and tests part. Tests contains NetworkAPITests, ViewModelTests and RepositoryTests with MockJSON file and its data.

# Installation
Can be used with Xcode 14 and above. Compatible with iPhone and iPad with minimum iOS version 15.0.

# Framework
Swift

# Architecture
This application uses MVVM for the views and clean architecture for the URL calls.

# Offline Storage


# Design Patterns
Future.

# Testing
Units tests for success and failure situations.Mocked responses using MockNetworking,  MockRestAPIManager

# Screenshots
