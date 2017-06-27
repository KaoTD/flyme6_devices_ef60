.class Lcom/android/server/notification/NotificationManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 757
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 760
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    .line 761
    .local v12, "action":Ljava/lang/String;
    if-nez v12, :cond_0

    .line 762
    return-void

    .line 765
    :cond_0
    const/16 v22, 0x0

    .line 766
    .local v22, "queryRestart":Z
    const/16 v20, 0x0

    .line 767
    .local v20, "queryRemove":Z
    const/16 v17, 0x0

    .line 768
    .local v17, "packageChanged":Z
    const/4 v13, 0x1

    .line 770
    .local v13, "cancelNotifications":Z
    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 771
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 770
    .local v20, "queryRemove":Z
    if-nez v20, :cond_1

    .line 772
    const-string/jumbo v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 770
    if-nez v2, :cond_1

    .line 773
    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 770
    .local v17, "packageChanged":Z
    if-nez v17, :cond_1

    .line 774
    const-string/jumbo v2, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 770
    .local v22, "queryRestart":Z
    if-nez v22, :cond_1

    .line 775
    const-string/jumbo v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 770
    if-eqz v2, :cond_e

    .line 776
    .end local v17    # "packageChanged":Z
    .end local v20    # "queryRemove":Z
    .end local v22    # "queryRestart":Z
    :cond_1
    const-string/jumbo v2, "android.intent.extra.user_handle"

    .line 777
    const/4 v3, -0x1

    .line 776
    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 778
    .local v9, "changeUserId":I
    const/16 v18, 0x0

    .line 779
    .local v18, "pkgList":[Ljava/lang/String;
    if-eqz v20, :cond_4

    .line 780
    const-string/jumbo v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    .line 781
    :goto_0
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " queryReplace="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_2
    const-string/jumbo v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 783
    const-string/jumbo v2, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 819
    .local v18, "pkgList":[Ljava/lang/String;
    :goto_1
    if-eqz v18, :cond_d

    move-object/from16 v0, v18

    array-length v2, v0

    if-lez v2, :cond_d

    .line 820
    const/4 v2, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v24, v2

    :goto_2
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_d

    aget-object v5, v18, v24

    .line 821
    .local v5, "pkgName":Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 822
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-get2()I

    move-result v3

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-get1()I

    move-result v4

    if-eqz v22, :cond_c

    const/4 v8, 0x0

    :goto_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 823
    const/4 v10, 0x5

    const/4 v11, 0x0

    .line 822
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    .line 820
    :cond_3
    add-int/lit8 v2, v24, 0x1

    move/from16 v24, v2

    goto :goto_2

    .line 779
    .end local v5    # "pkgName":Ljava/lang/String;
    .local v18, "pkgList":[Ljava/lang/String;
    :cond_4
    const/16 v21, 0x0

    .local v21, "queryReplace":Z
    goto :goto_0

    .line 784
    .end local v21    # "queryReplace":Z
    :cond_5
    if-eqz v22, :cond_6

    .line 785
    const-string/jumbo v2, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .local v18, "pkgList":[Ljava/lang/String;
    goto :goto_1

    .line 787
    .local v18, "pkgList":[Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v23

    .line 788
    .local v23, "uri":Landroid/net/Uri;
    if-nez v23, :cond_7

    .line 789
    return-void

    .line 791
    :cond_7
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 792
    .restart local v5    # "pkgName":Ljava/lang/String;
    if-nez v5, :cond_8

    .line 793
    return-void

    .line 795
    :cond_8
    if-eqz v17, :cond_a

    .line 798
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v19

    .line 800
    .local v19, "pm":Landroid/content/pm/IPackageManager;
    const/4 v2, -0x1

    if-eq v9, v2, :cond_b

    move v2, v9

    .line 799
    :goto_4
    move-object/from16 v0, v19

    invoke-interface {v0, v5, v2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v16

    .line 802
    .local v16, "enabled":I
    const/4 v2, 0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_9

    .line 803
    if-nez v16, :cond_a

    .line 804
    :cond_9
    const/4 v13, 0x0

    .line 816
    .end local v16    # "enabled":I
    .end local v19    # "pm":Landroid/content/pm/IPackageManager;
    :cond_a
    :goto_5
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v18, v0

    .end local v18    # "pkgList":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v5, v18, v2

    .local v18, "pkgList":[Ljava/lang/String;
    goto :goto_1

    .line 801
    .local v18, "pkgList":[Ljava/lang/String;
    .restart local v19    # "pm":Landroid/content/pm/IPackageManager;
    :cond_b
    const/4 v2, 0x0

    goto :goto_4

    .line 806
    .end local v19    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v15

    .line 809
    .local v15, "e":Ljava/lang/IllegalArgumentException;
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v2, :cond_a

    .line 810
    const-string/jumbo v2, "NotificationService"

    const-string/jumbo v3, "Exception trying to look up app enabled setting"

    invoke-static {v2, v3, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 822
    .end local v15    # "e":Ljava/lang/IllegalArgumentException;
    .end local v23    # "uri":Landroid/net/Uri;
    .local v18, "pkgList":[Ljava/lang/String;
    :cond_c
    const/4 v8, 0x1

    goto :goto_3

    .line 827
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get19(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v2

    move/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onPackagesChanged(Z[Ljava/lang/String;)V

    .line 828
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get9(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v2

    move/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/ConditionProviders;->onPackagesChanged(Z[Ljava/lang/String;)V

    .line 829
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get24(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v2

    move/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/RankingHelper;->onPackagesChanged(Z[Ljava/lang/String;)V

    .line 759
    .end local v9    # "changeUserId":I
    .end local v18    # "pkgList":[Ljava/lang/String;
    :cond_e
    return-void

    .line 812
    .restart local v5    # "pkgName":Ljava/lang/String;
    .restart local v9    # "changeUserId":I
    .local v18, "pkgList":[Ljava/lang/String;
    .restart local v23    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v14

    .local v14, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method
