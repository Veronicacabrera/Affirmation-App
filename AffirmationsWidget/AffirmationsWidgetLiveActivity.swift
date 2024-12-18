//
//  AffirmationsWidgetLiveActivity.swift
//  AffirmationsWidget
//
//  Created by VLol on 10/25/24.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct AffirmationsWidgetAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var emoji: String
    }

    // Fixed non-changing properties about your activity go here!
    var name: String
}

struct AffirmationsWidgetLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: AffirmationsWidgetAttributes.self) { context in
            // Lock screen/banner UI goes here
            VStack {
                Text("Hello \(context.state.emoji)")
            }
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    Text("Leading")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("Trailing")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text("Bottom \(context.state.emoji)")
                    // more content
                }
            } compactLeading: {
                Text("L")
            } compactTrailing: {
                Text("T \(context.state.emoji)")
            } minimal: {
                Text(context.state.emoji)
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

extension AffirmationsWidgetAttributes {
    fileprivate static var preview: AffirmationsWidgetAttributes {
        AffirmationsWidgetAttributes(name: "World")
    }
}

extension AffirmationsWidgetAttributes.ContentState {
    fileprivate static var smiley: AffirmationsWidgetAttributes.ContentState {
        AffirmationsWidgetAttributes.ContentState(emoji: "😀")
     }
     
     fileprivate static var starEyes: AffirmationsWidgetAttributes.ContentState {
         AffirmationsWidgetAttributes.ContentState(emoji: "🤩")
     }
}

#Preview("Notification", as: .content, using: AffirmationsWidgetAttributes.preview) {
   AffirmationsWidgetLiveActivity()
} contentStates: {
    AffirmationsWidgetAttributes.ContentState.smiley
    AffirmationsWidgetAttributes.ContentState.starEyes
}
