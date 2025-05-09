# method对应proto关系

解析二进制消息时发现存在部分消息类型找不到的情况研究了一下，发现存在部分特殊的情况

整理了些常用的及部分特殊的。

-----------------------------------------

|                    method                     |                 proto                  |                      二进制消息解析例子                      |
| :-------------------------------------------: | :------------------------------------: | :----------------------------------------------------------: |
|              WebcastChatMessage               |              ChatMessage               |          [WebcastChatMessage](#WebcastChatMessage)           |
|              WebcastGiftMessage               |              GiftMessage               |          [WebcastGiftMessage](#WebcastGiftMessage)           |
|             WebcastMemberMessage              |             MemberMessage              |        [WebcastMemberMessage](#WebcastMemberMessage)         |
|             WebcastLinkMicMethod              |             LinkMicMethod              |        [WebcastLinkMicMethod](#WebcastLinkMicMethod)         |
|      WebcastRanklistHourEntranceMessage       |      RanklistHourEntranceMessage       | [WebcastRanklistHourEntranceMessage](#WebcastRanklistHourEntranceMessage) |
|           WebcastRoomUserSeqMessage           |           RoomUserSeqMessage           |   [WebcastRoomUserSeqMessage](#WebcastRoomUserSeqMessage)    |
|            WebcastFansclubMessage             |            FansclubMessage             |      [WebcastFansclubMessage](#WebcastFansclubMessage)       |
|          WebcastRoomDataSyncMessage           |          RoomDataSyncMessage           |  [WebcastRoomDataSyncMessage](#WebcastRoomDataSyncMessage)   |
|      WebcastRoomStreamAdaptationMessage       |      RoomStreamAdaptationMessage       | [WebcastRoomStreamAdaptationMessage](#WebcastRoomStreamAdaptationMessage) |
|             WebcastHotRoomMessage             |             HotRoomMessage             |       [WebcastHotRoomMessage](#WebcastHotRoomMessage)        |
|            WebcastChatLikeMessage             |            ChatLikeMessage             |      [WebcastChatLikeMessage](#WebcastChatLikeMessage)       |
|             WebcastSocialMessage              |             SocialMessage              |        [WebcastSocialMessage](#WebcastSocialMessage)         |
|            WebcastRoomRankMessage             |            RoomRankMessage             |      [WebcastRoomRankMessage](#WebcastRoomRankMessage)       |
|            WebcastRoomStatsMessage            |            RoomStatsMessage            |     [WebcastRoomStatsMessage](#WebcastRoomStatsMessage)      |
|            WebcastGiftSortMessage             |            GiftSortMessage             |      [WebcastGiftSortMessage](#WebcastGiftSortMessage)       |
|          WebcastInRoomBannerMessage           |          InRoomBannerMessage           |  [WebcastInRoomBannerMessage](#WebcastInRoomBannerMessage)   |
|              WebcastLikeMessage               |              LikeMessage               |          [WebcastLikeMessage](#WebcastLikeMessage)           |
|             WebcastHotChatMessage             |             HotChatMessage             |       [WebcastHotChatMessage](#WebcastHotChatMessage)        |
|       WebcastActivityEmojiGroupsMessage       |       ActivityEmojiGroupsMessage       | [WebcastActivityEmojiGroupsMessage](#WebcastActivityEmojiGroupsMessage) |
|           WebcastScreenChatMessage            |           ScreenChatMessage            |    [WebcastScreenChatMessage](#WebcastScreenChatMessage)     |
|       WebcastLuckyBoxTempStatusMessage        |       LuckyBoxTempStatusMessage        | [WebcastLuckyBoxTempStatusMessage](#WebcastLuckyBoxTempStatusMessage) |
|            WebcastEmojiChatMessage            |            EmojiChatMessage            |     [WebcastEmojiChatMessage](#WebcastEmojiChatMessage)      |
|           WebcastBindingGiftMessage           |           BindingGiftMessage           |   [WebcastBindingGiftMessage](#WebcastBindingGiftMessage)    |
|         WebcastLuckyBoxRewardMessage          |         LuckyBoxRewardMessage          | [WebcastLuckyBoxRewardMessage](#WebcastLuckyBoxRewardMessage) |
|            WebcastLuckyBoxMessage             |            LuckyBoxMessage             |      [WebcastLuckyBoxMessage](#WebcastLuckyBoxMessage)       |
|         **WebcastRoomNotifyMessage**          |           **NotifyMessage**            |    [WebcastRoomNotifyMessage](#WebcastRoomNotifyMessage)     |
|         WebcastShelfTradeDataMessage          |         ShelfTradeDataMessage          | [WebcastShelfTradeDataMessage](#WebcastShelfTradeDataMessage) |
|          WebcastLiveShoppingMessage           |          LiveShoppingMessage           |  [WebcastLiveShoppingMessage](#WebcastLiveShoppingMessage)   |
|         WebcastLiveEcomGeneralMessage         |         LiveEcomGeneralMessage         | [WebcastLiveEcomGeneralMessage](#WebcastLiveEcomGeneralMessage) |
|              WebcastRoomMessage               |              RoomMessage               |          [WebcastRoomMessage](#WebcastRoomMessage)           |
|           WebcastGrowthTaskMessage            |           GrowthTaskMessage            |    [WebcastGrowthTaskMessage](#WebcastGrowthTaskMessage)     |
|            WebcastLiveEcomMessage             |            LiveEcomMessage             |      [WebcastLiveEcomMessage](#WebcastLiveEcomMessage)       |
|         WebcastUpdateFanTicketMessage         |         UpdateFanTicketMessage         | [WebcastUpdateFanTicketMessage](#WebcastUpdateFanTicketMessage) |
|          WebcastFeedbackCardMessage           |          FeedbackCardMessage           |  [WebcastFeedbackCardMessage](#WebcastFeedbackCardMessage)   |
|         WebcastExhibitionChatMessage          |         ExhibitionChatMessage          | [WebcastExhibitionChatMessage](#WebcastExhibitionChatMessage) |
|    WebcastTogetherLiveChangeMemberMessage     |    TogetherLiveChangeMemberMessage     | [WebcastTogetherLiveChangeMemberMessage](#WebcastTogetherLiveChangeMemberMessage) |
|        WebcastProfitGameStatusMessage         |        ProfitGameStatusMessage         | [WebcastProfitGameStatusMessage](#WebcastProfitGameStatusMessage) |
|            WebcastLightGiftMessage            |            LightGiftMessage            |     [WebcastLightGiftMessage](#WebcastLightGiftMessage)      |
|     WebcastProfitInteractionScoreMessage      |     ProfitInteractionScoreMessage      | [WebcastProfitInteractionScoreMessage](#WebcastProfitInteractionScoreMessage) |
|         WebcastBattleEndPunishMessage         |         BattleEndPunishMessage         | [WebcastBattleEndPunishMessage](#WebcastBattleEndPunishMessage) |
|       WebcastPrivilegeScreenChatMessage       |       PrivilegeScreenChatMessage       | [WebcastPrivilegeScreenChatMessage](#WebcastPrivilegeScreenChatMessage) |
|         WebcastAssetEffectUtilMessage         |         AssetEffectUtilMessage         | [WebcastAssetEffectUtilMessage](#WebcastAssetEffectUtilMessage) |
|              WebcastLinkMessage               |              LinkMessage               |          [WebcastLinkMessage](#WebcastLinkMessage)           |
|        **WebcastLinkMicBattleMethod**         |           **LinkMicBattle**            |  [WebcastLinkMicBattleMethod](#WebcastLinkMicBattleMethod)   |
|               **LinkMicMethod**               |           **LinkMicMethod**            |               [LinkMicMethod](#LinkMicMethod)                |
|         WebcastBattleTeamTaskMessage          |         BattleTeamTaskMessage          | [WebcastBattleTeamTaskMessage](#WebcastBattleTeamTaskMessage) |
|     **WebcastLinkMicBattleFinishMethod**      |        **LinkMicBattleFinish**         | [WebcastLinkMicBattleFinishMethod](#WebcastLinkMicBattleFinishMethod) |
|      WebcastBattlePowerContainerMessage       |      BattlePowerContainerMessage       | [WebcastBattlePowerContainerMessage](#WebcastBattlePowerContainerMessage) |
|      WebcastBattleSeasonPKResultMessage       |      BattleSeasonPKResultMessage       | [WebcastBattleSeasonPKResultMessage](#WebcastBattleSeasonPKResultMessage) |
|      WebcastAnchorLinkmicSilenceMessage       |      AnchorLinkmicSilenceMessage       | [WebcastAnchorLinkmicSilenceMessage](#WebcastAnchorLinkmicSilenceMessage) |
|          WebcastNotifyEffectMessage           |          NotifyEffectMessage           |  [WebcastNotifyEffectMessage](#WebcastNotifyEffectMessage)   |
|            WebcastHighlightComment            |            HighlightComment            |     [WebcastHighlightComment](#WebcastHighlightComment)      |
|         WebcastSandwichBorderMessage          |         SandwichBorderMessage          | [WebcastSandwichBorderMessage](#WebcastSandwichBorderMessage) |
|            WebcastAudioChatMessage            |            AudioChatMessage            |     [WebcastAudioChatMessage](#WebcastAudioChatMessage)      |
|           WebcastCommonToastMessage           |           CommonToastMessage           |   [WebcastCommonToastMessage](#WebcastCommonToastMessage)    |
|         WebcastInteractEffectMessage          |         InteractEffectMessage          | [WebcastInteractEffectMessage](#WebcastInteractEffectMessage) |
|       **WebcastDecorationModifyMethod**       |      **DecorationModifyMessage**       | [WebcastDecorationModifyMethod](#WebcastDecorationModifyMethod) |
|        WebcastDecorationUpdateMessage         |        DecorationUpdateMessage         | [WebcastDecorationUpdateMessage](#WebcastDecorationUpdateMessage) |
|        WebcastLinkSettingNotifyMessage        |        LinkSettingNotifyMessage        | [WebcastLinkSettingNotifyMessage](#WebcastLinkSettingNotifyMessage) |
|            WebcastBackupSEIMessage            |            BackupSEIMessage            |     [WebcastBackupSEIMessage](#WebcastBackupSEIMessage)      |
|         WebcastLotteryEventNewMessage         |         LotteryEventNewMessage         | [WebcastLotteryEventNewMessage](#WebcastLotteryEventNewMessage) |
|       WebcastInRoomBannerRefreshMessage       |       InRoomBannerRefreshMessage       | [WebcastInRoomBannerRefreshMessage](#WebcastInRoomBannerRefreshMessage) |
|             WebcastControlMessage             |             ControlMessage             |       [WebcastControlMessage](#WebcastControlMessage)        |
|          WebcastRankListAwardMessage          |          RankListAwardMessage          | [WebcastRankListAwardMessage](#WebcastRankListAwardMessage)  |
|      WebcastBattleEffectContainerMessage      |      BattleEffectContainerMessage      | [WebcastBattleEffectContainerMessage](#WebcastBattleEffectContainerMessage) |
|    WebcastGroupLiveContainerChangeMessage     |    GroupLiveContainerChangeMessage     | [WebcastGroupLiveContainerChangeMessage](#WebcastGroupLiveContainerChangeMessage) |
| WebcastGroupLiveGiftRecipientRecommendMessage | GroupLiveGiftRecipientRecommendMessage | [WebcastGroupLiveGiftRecipientRecommendMessage](#WebcastGroupLiveGiftRecipientRecommendMessage) |
|      WebcastGroupLiveMemberChangeMessage      |      GroupLiveMemberChangeMessage      | [WebcastGroupLiveMemberChangeMessage](#WebcastGroupLiveMemberChangeMessage) |
|         WebcastCommonCardAreaMessage          |         CommonCardAreaMessage          | [WebcastCommonCardAreaMessage](#WebcastCommonCardAreaMessage) |

--------------------



## WebcastChatMessage

