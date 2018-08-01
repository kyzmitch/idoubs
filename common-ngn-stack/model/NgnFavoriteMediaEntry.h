//
//  NgnFavoriteMediaEntry.h
//  ios-ngn-stack
//
//  Created by Andrei Ermoshin on 01/08/2018.
//  Copyright © 2018 Doubango Telecom. All rights reserved.
//

typedef struct FavoriteMediaEntry_s {
    NSString* description;
    NgnMediaType_t mediaType;
}
FavoriteMediaEntry_t;

static const FavoriteMediaEntry_t kFavoriteMediaEntries[3] = {
    { @"Voice Call", MediaType_Audio},
    { @"Video Call", MediaType_AudioVideo},
    { @"Text Message", MediaType_SMS},
};
