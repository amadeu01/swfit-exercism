struct SpaceAge {
    static let EarthYearInSeconds = 31557600.0
    
    let seconds: Double
    
    init(_ seconds: Double) {
        self.seconds = seconds
    }
}

extension SpaceAge {
    var onEarth: Double {
        return self.seconds/SpaceAge.EarthYearInSeconds
    }
}

extension SpaceAge {
    static let MercuryYearInEarthYears = 0.2408467
    
    var onMercury: Double {
        return onEarth/SpaceAge.MercuryYearInEarthYears
    }
}

extension SpaceAge {
    static let VenusYearInEarthYears = 0.61519726
    
    var onVenus: Double {
        return onEarth/SpaceAge.VenusYearInEarthYears
    }
}

extension SpaceAge {
    static let MarsYearInEarthYears = 1.8808158
    
    var onMars: Double {
        return onEarth/SpaceAge.MarsYearInEarthYears
    }
}

extension SpaceAge {
    static let JupiterYearInEarthYears = 11.862615
    
    var onJupiter: Double {
        return onEarth/SpaceAge.JupiterYearInEarthYears
    }
}

extension SpaceAge {
    static let SaturnYearInEarthYears = 29.447498

    var onSaturn: Double {
        return onEarth/SpaceAge.SaturnYearInEarthYears
    }
}

extension SpaceAge {
    static let UranusYearInEarthYears = 84.016846

    var onUranus: Double {
        return onEarth/SpaceAge.UranusYearInEarthYears
    }
}

extension SpaceAge {
    static let NeptuneYearInEarthYears = 164.79132

    var onNeptune: Double {
        return onEarth/SpaceAge.NeptuneYearInEarthYears
    }
}
