//
//  Track.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/2/22.
//

import Foundation

// TODO: Pt 1 - Create a Track model struct
struct Track {
    // Detail Properties
    let trackName: String // song name
    let artistName: String // artist(s) name
    let artworkUrl100: URL // album cover
    let collectionName: String // album name
    let primaryGenreName: String // genre name
    let releaseDate: Date // date release
    let trackTimeMillis: Int // duration of track in milliseconds

}

// TODO: Pt 1 - Create an extension with a mock tracks static var
extension Track {
    // An array of mock tracks
    // "static var" stores variables on the type rather than a particular instance, this is "type property", and it's good for universal values that are not tied to specific instances
    static var mockTracks: [Track]  = [
        Track(trackName: "Split",
              artistName: "Yeat",
              artworkUrl100: URL(string:"https://is1-ssl.mzstatic.com/image/thumb/Music126/v4/52/50/92/525092dd-6e60-d015-5e2f-778a66becfad/23UMGIM16900.rgb.jpg/100x100bb.jpg")!,
              collectionName: "AftërLyfe",
              primaryGenreName: "Hip-Hop/Rap",
              releaseDate: Date(),
              trackTimeMillis: 143467),
        Track(trackName: "Lying 4 fun",
              artistName: "Yeat",
              artworkUrl100: URL(string: "https://is2-ssl.mzstatic.com/image/thumb/Music125/v4/21/9a/b2/219ab295-469c-f0f9-1369-60c9af11c6f2/21008.jpg/100x100bb.jpg")!,
              collectionName: "Up 2 Më",
              primaryGenreName: "Hip-Hop/Rap",
              releaseDate: Date(),
              trackTimeMillis: 303961),
        Track(trackName: "On tha linë",
              artistName: "Yeat",
              artworkUrl100: URL(string: "https://is3-ssl.mzstatic.com/image/thumb/Music116/v4/56/87/45/568745a7-0691-708c-62da-71447fefb544/22UMGIM15568.rgb.jpg/100x100bb.jpg")!,
              collectionName: "2 Alivë",
              primaryGenreName: "Hip-Hop/Rap",
              releaseDate: Date(),
              trackTimeMillis: 154787)
    ]

    // We can now access this array of mock tracks anywhere like this:
    // let tracks = Tracks.mockTracks
}

// MARK: Helper Methods
// Converts milliseconds to mm:ss format
//  ex:  208643 -> "3:28"
//  ex:
func formattedTrackDuration(with milliseconds: Int) -> String {
    let (minutes, seconds) = milliseconds.quotientAndRemainder(dividingBy: 60 * 1000)
    let truncatedSeconds = seconds / 1000
    if truncatedSeconds >= 10 {
        return "\(minutes):\(truncatedSeconds)"
    } else {
        return "\(minutes):0\(truncatedSeconds)"
    }
}
