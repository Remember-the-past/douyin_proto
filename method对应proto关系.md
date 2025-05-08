# method对应proto关系

解析二进制消息时发现存在部分消息类型找不到的情况研究了一下，发现存在部分特殊的情况

整理了些常用的及部分特殊的。

-----------------------------------------

|                 method                 |              proto              |                           example                            |
| :------------------------------------: | :-----------------------------: | :----------------------------------------------------------: |
|           WebcastChatMessage           |           ChatMessage           |          [WebcastChatMessage](#WebcastChatMessage)           |
|           WebcastGiftMessage           |           GiftMessage           |          [WebcastGiftMessage](#WebcastGiftMessage)           |
|          WebcastMemberMessage          |          MemberMessage          |        [WebcastMemberMessage](#WebcastMemberMessage)         |
|          WebcastLinkMicMethod          |          LinkMicMethod          |        [WebcastLinkMicMethod](#WebcastLinkMicMethod)         |
|   WebcastRanklistHourEntranceMessage   |   RanklistHourEntranceMessage   | [WebcastRanklistHourEntranceMessage](#WebcastRanklistHourEntranceMessage) |
|         WebcastFansclubMessage         |         FansclubMessage         |      [WebcastFansclubMessage](#WebcastFansclubMessage)       |
|       WebcastRoomUserSeqMessage        |       RoomUserSeqMessage        |   [WebcastRoomUserSeqMessage](#WebcastRoomUserSeqMessage)    |
|       WebcastRoomDataSyncMessage       |       RoomDataSyncMessage       |  [WebcastRoomDataSyncMessage](#WebcastRoomDataSyncMessage)   |
|   WebcastRoomStreamAdaptationMessage   |   RoomStreamAdaptationMessage   | [WebcastRoomStreamAdaptationMessage](#WebcastRoomStreamAdaptationMessage) |
|         WebcastHotRoomMessage          |         HotRoomMessage          |       [WebcastHotRoomMessage](#WebcastHotRoomMessage)        |
|         WebcastChatLikeMessage         |         ChatLikeMessage         |      [WebcastChatLikeMessage](#WebcastChatLikeMessage)       |
|          WebcastSocialMessage          |          SocialMessage          |          [WebcastChatMessage](#WebcastChatMessage)           |
|         WebcastRoomRankMessage         |         RoomRankMessage         |          [WebcastChatMessage](#WebcastChatMessage)           |
|        WebcastRoomStatsMessage         |        RoomStatsMessage         |          [WebcastChatMessage](#WebcastChatMessage)           |
|         WebcastGiftSortMessage         |         GiftSortMessage         |          [WebcastChatMessage](#WebcastChatMessage)           |
|       WebcastInRoomBannerMessage       |       InRoomBannerMessage       |          [WebcastChatMessage](#WebcastChatMessage)           |
|           WebcastLikeMessage           |           LikeMessage           |          [WebcastChatMessage](#WebcastChatMessage)           |
|         WebcastHotChatMessage          |         HotChatMessage          |          [WebcastChatMessage](#WebcastChatMessage)           |
|   WebcastActivityEmojiGroupsMessage    |   ActivityEmojiGroupsMessage    |          [WebcastChatMessage](#WebcastChatMessage)           |
|        WebcastScreenChatMessage        |        ScreenChatMessage        |          [WebcastChatMessage](#WebcastChatMessage)           |
|    WebcastLuckyBoxTempStatusMessage    |    LuckyBoxTempStatusMessage    |          [WebcastChatMessage](#WebcastChatMessage)           |
|        WebcastEmojiChatMessage         |        EmojiChatMessage         |          [WebcastChatMessage](#WebcastChatMessage)           |
|       WebcastBindingGiftMessage        |       BindingGiftMessage        |          [WebcastChatMessage](#WebcastChatMessage)           |
|      WebcastLuckyBoxRewardMessage      |      LuckyBoxRewardMessage      |          [WebcastChatMessage](#WebcastChatMessage)           |
|         WebcastLuckyBoxMessage         |         LuckyBoxMessage         |          [WebcastChatMessage](#WebcastChatMessage)           |
|      **WebcastRoomNotifyMessage**      |        **NotifyMessage**        |          [WebcastChatMessage](#WebcastChatMessage)           |
|      WebcastShelfTradeDataMessage      |      ShelfTradeDataMessage      |          [WebcastChatMessage](#WebcastChatMessage)           |
|       WebcastLiveShoppingMessage       |       LiveShoppingMessage       |          [WebcastChatMessage](#WebcastChatMessage)           |
|     WebcastLiveEcomGeneralMessage      |     LiveEcomGeneralMessage      |          [WebcastChatMessage](#WebcastChatMessage)           |
|           WebcastRoomMessage           |           RoomMessage           |          [WebcastChatMessage](#WebcastChatMessage)           |
|        WebcastGrowthTaskMessage        |        GrowthTaskMessage        |          [WebcastChatMessage](#WebcastChatMessage)           |
|         WebcastLiveEcomMessage         |         LiveEcomMessage         |          [WebcastChatMessage](#WebcastChatMessage)           |
|     WebcastUpdateFanTicketMessage      |     UpdateFanTicketMessage      |          [WebcastChatMessage](#WebcastChatMessage)           |
|       WebcastFeedbackCardMessage       |       FeedbackCardMessage       |          [WebcastChatMessage](#WebcastChatMessage)           |
|      WebcastExhibitionChatMessage      |      ExhibitionChatMessage      |          [WebcastChatMessage](#WebcastChatMessage)           |
| WebcastTogetherLiveChangeMemberMessage | TogetherLiveChangeMemberMessage |          [WebcastChatMessage](#WebcastChatMessage)           |
|     WebcastProfitGameStatusMessage     |     ProfitGameStatusMessage     |          [WebcastChatMessage](#WebcastChatMessage)           |
|        WebcastLightGiftMessage         |        LightGiftMessage         |          [WebcastChatMessage](#WebcastChatMessage)           |
|  WebcastProfitInteractionScoreMessage  |  ProfitInteractionScoreMessage  |          [WebcastChatMessage](#WebcastChatMessage)           |
|     WebcastBattleEndPunishMessage      |     BattleEndPunishMessage      |          [WebcastChatMessage](#WebcastChatMessage)           |
|   WebcastPrivilegeScreenChatMessage    |   PrivilegeScreenChatMessage    |          [WebcastChatMessage](#WebcastChatMessage)           |
|     WebcastAssetEffectUtilMessage      |     AssetEffectUtilMessage      |          [WebcastChatMessage](#WebcastChatMessage)           |
|           WebcastLinkMessage           |           LinkMessage           |          [WebcastChatMessage](#WebcastChatMessage)           |
|     **WebcastLinkMicBattleMethod**     |        **LinkMicBattle**        |          [WebcastChatMessage](#WebcastChatMessage)           |
|           **LinkMicMethod**            |        **LinkMicMethod**        |          [WebcastChatMessage](#WebcastChatMessage)           |
|      WebcastBattleTeamTaskMessage      |      BattleTeamTaskMessage      |          [WebcastChatMessage](#WebcastChatMessage)           |
|  **WebcastLinkMicBattleFinishMethod**  |     **LinkMicBattleFinish**     |          [WebcastChatMessage](#WebcastChatMessage)           |
|   WebcastBattlePowerContainerMessage   |   BattlePowerContainerMessage   |          [WebcastChatMessage](#WebcastChatMessage)           |
|   WebcastBattleSeasonPKResultMessage   |   BattleSeasonPKResultMessage   |          [WebcastChatMessage](#WebcastChatMessage)           |
|   WebcastAnchorLinkmicSilenceMessage   |   AnchorLinkmicSilenceMessage   |          [WebcastChatMessage](#WebcastChatMessage)           |
|       WebcastNotifyEffectMessage       |       NotifyEffectMessage       |          [WebcastChatMessage](#WebcastChatMessage)           |
|        WebcastHighlightComment         |        HighlightComment         |          [WebcastChatMessage](#WebcastChatMessage)           |
|      WebcastSandwichBorderMessage      |      SandwichBorderMessage      |          [WebcastChatMessage](#WebcastChatMessage)           |
|        WebcastAudioChatMessage         |        AudioChatMessage         |          [WebcastChatMessage](#WebcastChatMessage)           |
|       WebcastCommonToastMessage        |       CommonToastMessage        |          [WebcastChatMessage](#WebcastChatMessage)           |



--------------------



## WebcastChatMessage

