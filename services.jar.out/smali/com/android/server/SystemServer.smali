.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemServer$AdbPortObserver;
    }
.end annotation


# static fields
.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final MOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.MountService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/SystemServer;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 179
    return-void
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    .line 331
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 332
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, #android:style@Theme.Power.Dialog#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 176
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 175
    return-void
.end method

.method private performPendingShutdown()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 315
    const-string/jumbo v3, "sys.shutdown.requested"

    const-string/jumbo v4, ""

    .line 314
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 317
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    .line 320
    .local v1, "reboot":Z
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_2

    .line 321
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 326
    :goto_1
    invoke-static {v7, v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 313
    .end local v1    # "reboot":Z
    :cond_0
    return-void

    .line 317
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "reboot":Z
    goto :goto_0

    .line 323
    :cond_2
    const/4 v0, 0x0

    .local v0, "reason":Ljava/lang/String;
    goto :goto_1
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 309
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string/jumbo v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    return-void
.end method

.method private run()V
    .locals 9

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    const/4 v8, 0x1

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 203
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 215
    :cond_0
    const-string/jumbo v0, "persist.sys.language"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 216
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    .line 218
    .local v7, "languageTag":Ljava/lang/String;
    const-string/jumbo v0, "persist.sys.locale"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string/jumbo v0, "persist.sys.language"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string/jumbo v0, "persist.sys.country"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string/jumbo v0, "persist.sys.localevar"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .end local v7    # "languageTag":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v4, 0xbc2

    invoke-static {v4, v0, v1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 235
    const-string/jumbo v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 240
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 241
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 250
    :cond_2
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 254
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 258
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 262
    invoke-static {v8}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 265
    invoke-static {v8}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 269
    const/4 v0, -0x2

    .line 268
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 270
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 271
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 274
    const-string/jumbo v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 278
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 281
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 284
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 285
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 289
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 290
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 291
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 300
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_3
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 305
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :catch_0
    move-exception v6

    .line 293
    .local v6, "ex":Ljava/lang/Throwable;
    const-string/jumbo v0, "System"

    const-string/jumbo v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string/jumbo v0, "System"

    const-string/jumbo v1, "************ Failure starting system services"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    throw v6
.end method

.method private startBootstrapServices()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 347
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/Installer;

    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Installer;

    .line 350
    .local v1, "installer":Lcom/android/server/pm/Installer;
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 351
    const-class v5, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    .line 350
    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 352
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 353
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 359
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 363
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 366
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/lights/LightsService;

    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 370
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 373
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x64

    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 376
    const-string/jumbo v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, "cryptState":Ljava/lang/String;
    const-string/jumbo v2, "trigger_restart_min_framework"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 378
    const-string/jumbo v2, "SystemServer"

    const-string/jumbo v5, "Detected encryption in progress - only parsing core apps"

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iput-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 386
    :cond_0
    :goto_0
    const-string/jumbo v2, "SystemServer"

    const-string/jumbo v5, "Package Manager"

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 388
    iget v2, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    iget-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 387
    invoke-static {v5, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 389
    iget-object v2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 390
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 392
    const-string/jumbo v2, "SystemServer"

    const-string/jumbo v3, "User Service"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string/jumbo v2, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 396
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 399
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 403
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 343
    return-void

    .line 380
    :cond_1
    const-string/jumbo v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    const-string/jumbo v2, "SystemServer"

    const-string/jumbo v5, "Device encrypted - only parsing core apps"

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iput-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_0

    :cond_2
    move v2, v4

    .line 388
    goto :goto_1
.end method

.method private startCoreServices()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 414
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 415
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 416
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 415
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 418
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getUsageStatsIfNoPackageUsageInfo()V

    .line 421
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 409
    return-void
.end method

.method private startOtherServices()V
    .locals 108

    .prologue
    .line 429
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 430
    .local v3, "context":Landroid/content/Context;
    const/16 v30, 0x0

    .line 431
    .local v30, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v46, 0x0

    .line 432
    .local v46, "contentService":Lcom/android/server/content/ContentService;
    const/16 v101, 0x0

    .line 433
    .local v101, "vibrator":Lcom/android/server/VibratorService;
    const/16 v32, 0x0

    .line 434
    .local v32, "alarm":Landroid/app/IAlarmManager;
    const/16 v80, 0x0

    .line 435
    .local v80, "mountService":Landroid/os/storage/IMountService;
    const/4 v7, 0x0

    .line 436
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v6, 0x0

    .line 437
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v81, 0x0

    .line 438
    .local v81, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v42, 0x0

    .line 439
    .local v42, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v82, 0x0

    .line 440
    .local v82, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v92, 0x0

    .line 441
    .local v92, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v107, 0x0

    .line 442
    .local v107, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v100, 0x0

    .line 443
    .local v100, "usb":Lcom/android/server/usb/UsbService;
    const/16 v89, 0x0

    .line 444
    .local v89, "serial":Lcom/android/server/SerialService;
    const/16 v85, 0x0

    .line 445
    .local v85, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v39, 0x0

    .line 446
    .local v39, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v69, 0x0

    .line 447
    .local v69, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v96, 0x0

    .line 448
    .local v96, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v44, 0x0

    .line 449
    .local v44, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v35, 0x0

    .line 450
    .local v35, "audioService":Lcom/android/server/audio/AudioService;
    const/16 v79, 0x0

    .line 451
    .local v79, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v61, 0x0

    .line 452
    .local v61, "entropyMixer":Lcom/android/server/EntropyMixer;
    const/16 v38, 0x0

    .line 453
    .local v38, "cameraService":Lcom/android/server/camera/CameraService;
    const/16 v59, 0x0

    .line 455
    .local v59, "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    const-string/jumbo v4, "config.disable_storage"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v55

    .line 456
    .local v55, "disableStorage":Z
    const-string/jumbo v4, "config.disable_bluetooth"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v50

    .line 457
    .local v50, "disableBluetooth":Z
    const-string/jumbo v4, "config.disable_location"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v51

    .line 458
    .local v51, "disableLocation":Z
    const-string/jumbo v4, "config.disable_systemui"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v56

    .line 459
    .local v56, "disableSystemUI":Z
    const-string/jumbo v4, "config.disable_noncore"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v54

    .line 460
    .local v54, "disableNonCoreServices":Z
    const-string/jumbo v4, "config.disable_network"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v52

    .line 461
    .local v52, "disableNetwork":Z
    const-string/jumbo v4, "config.disable_networktime"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v53

    .line 462
    .local v53, "disableNetworkTime":Z
    const-string/jumbo v4, "ro.kernel.qemu"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v71

    .line 463
    .local v71, "isEmulator":Z
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 464
    const v5, 0x3f04000a

    .line 463
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v63

    .line 465
    .local v63, "externalServices":[Ljava/lang/String;
    const-string/jumbo v4, "config.disable_atlas"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    .line 468
    .local v49, "disableAtlas":Z
    :try_start_0
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Reading configuration..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 471
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Scheduling Policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const-string/jumbo v4, "scheduling_policy"

    new-instance v5, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v5}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 476
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Telephony Registry"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    new-instance v97, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v97

    invoke-direct {v0, v3}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_43

    .line 478
    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v97, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string/jumbo v4, "telephony.registry"

    move-object/from16 v0, v97

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 480
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Entropy Mixer"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    new-instance v62, Lcom/android/server/EntropyMixer;

    move-object/from16 v0, v62

    invoke-direct {v0, v3}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_44

    .line 483
    .local v62, "entropyMixer":Lcom/android/server/EntropyMixer;
    :try_start_2
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .end local v61    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 485
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Camera Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/camera/CameraService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 491
    :try_start_3
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Account Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    new-instance v31, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 493
    .end local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v31, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_4
    const-string/jumbo v4, "account"

    move-object/from16 v0, v31

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_48
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_45

    move-object/from16 v30, v31

    .line 498
    .end local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_0
    :try_start_5
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Content Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_25

    const/4 v4, 0x1

    .line 499
    :goto_1
    invoke-static {v3, v4}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v46

    .line 502
    .local v46, "contentService":Lcom/android/server/content/ContentService;
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "System Content Providers"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 505
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Vibrator Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    new-instance v102, Lcom/android/server/VibratorService;

    move-object/from16 v0, v102

    invoke-direct {v0, v3}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 507
    .end local v101    # "vibrator":Lcom/android/server/VibratorService;
    .local v102, "vibrator":Lcom/android/server/VibratorService;
    :try_start_6
    const-string/jumbo v4, "vibrator"

    move-object/from16 v0, v102

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 509
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Consumer IR Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    new-instance v45, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v45

    invoke-direct {v0, v3}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_46

    .line 511
    .local v45, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_7
    const-string/jumbo v4, "consumer_ir"

    .end local v44    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v0, v45

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 513
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 515
    const-string/jumbo v4, "alarm"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 514
    invoke-static {v4}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v32

    .line 517
    .local v32, "alarm":Landroid/app/IAlarmManager;
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Init Watchdog"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v106

    .line 519
    .local v106, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v106

    invoke-virtual {v0, v3, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 521
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Input Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    new-instance v70, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v70

    invoke-direct {v0, v3}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_47

    .line 524
    .local v70, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_8
    const-string/jumbo v4, "SystemServer"

    .end local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    const-string/jumbo v5, "Window Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_26

    const/4 v4, 0x1

    .line 527
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    const/4 v8, 0x1

    .line 525
    move-object/from16 v0, v70

    invoke-static {v3, v0, v4, v8, v5}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v107

    .line 528
    .local v107, "wm":Lcom/android/server/wm/WindowManagerService;
    const-string/jumbo v4, "window"

    move-object/from16 v0, v107

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 529
    const-string/jumbo v4, "input"

    move-object/from16 v0, v70

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 531
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v107

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 533
    invoke-virtual/range {v107 .. v107}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v4

    move-object/from16 v0, v70

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 534
    invoke-virtual/range {v70 .. v70}, Lcom/android/server/input/InputManagerService;->start()V

    .line 537
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 542
    if-eqz v71, :cond_27

    .line 543
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooh Service (emulator)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    :goto_3
    move-object/from16 v61, v62

    .end local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v61, "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v44, v45

    .end local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v44, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v96, v97

    .end local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v96, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v69, v70

    .end local v70    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v69, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v101, v102

    .line 560
    .end local v32    # "alarm":Landroid/app/IAlarmManager;
    .end local v44    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v46    # "contentService":Lcom/android/server/content/ContentService;
    .end local v61    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v102    # "vibrator":Lcom/android/server/VibratorService;
    .end local v106    # "watchdog":Lcom/android/server/Watchdog;
    .end local v107    # "wm":Lcom/android/server/wm/WindowManagerService;
    :goto_4
    const/16 v93, 0x0

    .line 561
    .local v93, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v87, 0x0

    .line 562
    .local v87, "notification":Landroid/app/INotificationManager;
    const/16 v67, 0x0

    .line 563
    .local v67, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v104, 0x0

    .line 564
    .local v104, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v72, 0x0

    .line 565
    .local v72, "location":Lcom/android/server/LocationManagerService;
    const/16 v47, 0x0

    .line 566
    .local v47, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v98, 0x0

    .line 567
    .local v98, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v74, 0x0

    .line 568
    .local v74, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v33, 0x0

    .line 569
    .local v33, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v76, 0x0

    .line 570
    .local v76, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/16 v64, 0x0

    .line 573
    .local v64, "gestureService":Lcom/android/server/gesture/GestureService;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    :try_start_9
    const-string v4, "SystemServer"

    const-string v5, "Input Method Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v68, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v68

    move-object/from16 v1, v107

    invoke-direct {v0, v3, v1}, Lcom/android/server/MzInputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    .line 577
    .end local v67    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v68, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_a
    const-string/jumbo v4, "input_method"

    move-object/from16 v0, v68

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_42

    move-object/from16 v67, v68

    .line 583
    .end local v68    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_5
    :try_start_b
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Accessibility Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const-string/jumbo v4, "accessibility"

    .line 585
    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    .line 584
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    .line 592
    :cond_0
    :goto_6
    :try_start_c
    invoke-virtual/range {v107 .. v107}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    .line 597
    :goto_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 598
    if-nez v55, :cond_1

    .line 599
    const-string/jumbo v4, "0"

    const-string/jumbo v5, "system_init.startmountservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 616
    .end local v80    # "mountService":Landroid/os/storage/IMountService;
    :cond_1
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 619
    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_7

    .line 632
    :goto_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_37

    if-nez v54, :cond_3

    :try_start_e
    const-string v4, "SystemServer"

    const-string v5, "LockSettingsService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v75, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v75

    invoke-direct {v0, v3}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_8

    .line 637
    .end local v74    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v75, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_f
    const-string/jumbo v4, "lock_settings"

    move-object/from16 v0, v75

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_41

    move-object/from16 v74, v75

    .line 642
    .end local v75    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_a
    const-string/jumbo v4, "ro.frp.pst"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 643
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 646
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 650
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_3
    if-nez v56, :cond_4

    :try_start_10
    const-string v4, "SystemServer"

    const-string v5, "Status Bar"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v94, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v94

    move-object/from16 v1, v107

    invoke-direct {v0, v3, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_9

    .line 657
    .end local v93    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v94, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_11
    const-string/jumbo v4, "statusbar"

    move-object/from16 v0, v94

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_40

    move-object/from16 v93, v94

    .end local v94    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_4
    :goto_b
    if-nez v54, :cond_5

    :try_start_12
    const-string v4, "SystemServer"

    const-string v5, "Clipboard Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "clipboard"

    new-instance v5, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v5, v3}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_a

    :cond_5
    :goto_c
    if-nez v52, :cond_6

    :try_start_13
    const-string v4, "SystemServer"

    const-string v5, "NetworkManagement Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v7

    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    const-string v4, "network_management"

    invoke-static {v4, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_b

    .end local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :cond_6
    :goto_d
    if-nez v54, :cond_7

    :try_start_14
    const-string v4, "SystemServer"

    const-string v5, "Text Service Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v99, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v99

    invoke-direct {v0, v3}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_c

    .line 687
    .end local v98    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v99, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_15
    const-string/jumbo v4, "textservices"

    move-object/from16 v0, v99

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_3f

    move-object/from16 v98, v99

    .line 693
    .end local v99    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_7
    :goto_e
    if-nez v52, :cond_36

    .line 695
    :try_start_16
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Network Score Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    new-instance v83, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v83

    invoke-direct {v0, v3}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_d

    .line 697
    .end local v82    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v83, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_17
    const-string/jumbo v4, "network_score"

    move-object/from16 v0, v83

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_3e

    move-object/from16 v82, v83

    .line 703
    .end local v83    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_f
    :try_start_18
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "NetworkStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    new-instance v84, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v84

    move-object/from16 v1, v32

    invoke-direct {v0, v3, v7, v1}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_e

    .line 705
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v84, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_19
    const-string/jumbo v4, "netstats"

    move-object/from16 v0, v84

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_3d

    move-object/from16 v6, v84

    .line 711
    .end local v84    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_10
    :try_start_1a
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "NetworkPolicy Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService;

    .line 713
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 714
    const-string/jumbo v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Landroid/os/IPowerManager;

    .line 712
    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_f

    .line 716
    .end local v81    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v2, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_1b
    const-string/jumbo v4, "netpolicy"

    invoke-static {v4, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_3c

    .line 721
    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 722
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.WifiService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 723
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 724
    const-string/jumbo v5, "com.android.server.wifi.WifiScanningService"

    .line 723
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 726
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.RttService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 728
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.ethernet"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 729
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 728
    if-eqz v4, :cond_9

    .line 730
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 734
    :cond_9
    :try_start_1c
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Connectivity Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    new-instance v43, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v43

    invoke-direct {v0, v3, v7, v6, v2}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_10

    .line 737
    .end local v42    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v43, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_1d
    const-string/jumbo v4, "connectivity"

    move-object/from16 v0, v43

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 738
    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 739
    move-object/from16 v0, v43

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_3b

    move-object/from16 v42, v43

    .line 745
    .end local v43    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_12
    :try_start_1e
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Network Service Discovery Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    invoke-static {v3}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v92

    .line 748
    .local v92, "serviceDiscovery":Lcom/android/server/NsdService;
    const-string/jumbo v4, "servicediscovery"

    .line 747
    move-object/from16 v0, v92

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_11

    .line 754
    .end local v92    # "serviceDiscovery":Lcom/android/server/NsdService;
    :goto_13
    if-nez v54, :cond_a

    .line 756
    :try_start_1f
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "UpdateLock Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const-string/jumbo v4, "updatelock"

    .line 758
    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v3}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    .line 757
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_12

    .line 769
    :cond_a
    :goto_14
    if-eqz v80, :cond_b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-eqz v4, :cond_2c

    .line 777
    :cond_b
    :goto_15
    if-eqz v30, :cond_c

    .line 778
    :try_start_20
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_14

    .line 784
    :cond_c
    :goto_16
    if-eqz v46, :cond_d

    .line 785
    :try_start_21
    invoke-virtual/range {v46 .. v46}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_15

    .line 790
    :cond_d
    :goto_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 792
    const-string/jumbo v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 791
    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v87

    .line 793
    .local v87, "notification":Landroid/app/INotificationManager;
    move-object/from16 v0, v87

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 795
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 797
    if-nez v51, :cond_e

    .line 799
    :try_start_22
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Location Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    new-instance v73, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v73

    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_16

    .line 801
    .end local v72    # "location":Lcom/android/server/LocationManagerService;
    .local v73, "location":Lcom/android/server/LocationManagerService;
    :try_start_23
    const-string/jumbo v4, "location"

    move-object/from16 v0, v73

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_3a

    move-object/from16 v72, v73

    .line 807
    .end local v73    # "location":Lcom/android/server/LocationManagerService;
    :goto_18
    :try_start_24
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Country Detector"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    new-instance v48, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v48

    invoke-direct {v0, v3}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_17

    .line 809
    .end local v47    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v48, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_25
    const-string/jumbo v4, "country_detector"

    move-object/from16 v0, v48

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_39

    move-object/from16 v47, v48

    .line 815
    .end local v48    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_e
    :goto_19
    if-nez v54, :cond_f

    .line 817
    :try_start_26
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Search Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    const-string/jumbo v4, "search"

    .line 819
    new-instance v5, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    .line 818
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_18

    .line 826
    :cond_f
    :goto_1a
    :try_start_27
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "DropBox Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    const-string/jumbo v4, "dropbox"

    .line 828
    new-instance v5, Lcom/android/server/DropBoxManagerService;

    new-instance v8, Ljava/io/File;

    const-string/jumbo v9, "/data/system/dropbox"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v3, v8}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 827
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_19

    .line 833
    :goto_1b
    if-nez v54, :cond_10

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #android:bool@config_enableWallpaperService#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_10

    :try_start_28
    const-string v4, "SystemServer"

    const-string v5, "Wallpaper Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v105, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v105

    invoke-direct {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_1a

    .line 838
    .end local v104    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v105, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_29
    const-string/jumbo v4, "wallpaper"

    move-object/from16 v0, v105

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_38

    move-object/from16 v104, v105

    .line 845
    .end local v105    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_10
    :goto_1c
    :try_start_2a
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Audio Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    new-instance v36, Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v36

    invoke-direct {v0, v3}, Lcom/android/server/audio/AudioService;-><init>(Landroid/content/Context;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_1b

    .line 847
    .end local v35    # "audioService":Lcom/android/server/audio/AudioService;
    .local v36, "audioService":Lcom/android/server/audio/AudioService;
    :try_start_2b
    const-string/jumbo v4, "audio"

    move-object/from16 v0, v36

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_37

    move-object/from16 v35, v36

    .line 852
    .end local v36    # "audioService":Lcom/android/server/audio/AudioService;
    :goto_1d
    if-nez v54, :cond_11

    .line 853
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DockObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 855
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 856
    const-string/jumbo v5, "android.hardware.type.watch"

    .line 855
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 857
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/ThermalObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 862
    :cond_11
    :try_start_2c
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Wired Accessory Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    new-instance v4, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v69

    invoke-direct {v4, v3, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    .line 864
    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_1c

    .line 870
    :goto_1e
    if-nez v54, :cond_15

    .line 871
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.midi"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 873
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 876
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 877
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 878
    const-string/jumbo v5, "android.hardware.usb.accessory"

    .line 877
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 876
    if-eqz v4, :cond_14

    .line 880
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 884
    :cond_14
    :try_start_2d
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Serial Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    new-instance v90, Lcom/android/server/SerialService;

    move-object/from16 v0, v90

    invoke-direct {v0, v3}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_1d

    .line 887
    .end local v89    # "serial":Lcom/android/server/SerialService;
    .local v90, "serial":Lcom/android/server/SerialService;
    :try_start_2e
    const-string/jumbo v4, "serial"

    move-object/from16 v0, v90

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_36

    move-object/from16 v89, v90

    .line 893
    .end local v90    # "serial":Lcom/android/server/SerialService;
    :cond_15
    :goto_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 895
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 897
    if-nez v54, :cond_19

    .line 898
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.backup"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 899
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 902
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.app_widgets"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 903
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 906
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.voice_recognizers"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 907
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 910
    :cond_18
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 911
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Gesture Launcher Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 917
    :cond_19
    :try_start_2f
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "DiskStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    const-string/jumbo v4, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_1e

    .line 928
    :goto_20
    :try_start_30
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "SamplingProfiler Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    const-string/jumbo v4, "samplingprofiler"

    .line 930
    new-instance v5, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v5, v3}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    .line 929
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_1f

    .line 935
    :goto_21
    if-nez v52, :cond_1a

    if-eqz v53, :cond_2d

    .line 945
    .end local v85    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_1a
    :goto_22
    :try_start_31
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "CommonTimeManagementService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    new-instance v40, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v40

    invoke-direct {v0, v3}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_21

    .line 947
    .end local v39    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v40, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_32
    const-string/jumbo v4, "commontime_management"

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_35

    move-object/from16 v39, v40

    .line 952
    .end local v40    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :goto_23
    if-nez v52, :cond_1b

    .line 954
    :try_start_33
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "CertBlacklister"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    new-instance v37, Lcom/android/server/CertBlacklister;

    move-object/from16 v0, v37

    invoke-direct {v0, v3}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_22

    .line 961
    :cond_1b
    :goto_24
    if-nez v54, :cond_1c

    .line 963
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_1c
    if-nez v54, :cond_1d

    if-eqz v49, :cond_2e

    .end local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_1d
    :goto_25
    if-nez v54, :cond_1e

    const-string v4, "graphicsstats"

    new-instance v5, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_1e
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #android:bool@config_enableGestureService#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    :try_start_34
    const-string v4, "SystemServer"

    const-string v5, "Gesture Sensor Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v65, Lcom/android/server/gesture/GestureService;

    move-object/from16 v0, v65

    move-object/from16 v1, v69

    invoke-direct {v0, v3, v1}, Lcom/android/server/gesture/GestureService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_24

    .line 986
    .end local v64    # "gestureService":Lcom/android/server/gesture/GestureService;
    .local v65, "gestureService":Lcom/android/server/gesture/GestureService;
    :try_start_35
    const-string/jumbo v4, "gesture"

    move-object/from16 v0, v65

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_33

    move-object/from16 v64, v65

    .line 992
    .end local v65    # "gestureService":Lcom/android/server/gesture/GestureService;
    :cond_1f
    :goto_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.print"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 993
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.print.PrintManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 996
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 998
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1000
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.hdmi.cec"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1001
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1004
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.live_tv"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1005
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1008
    :cond_22
    if-nez v54, :cond_23

    .line 1010
    :try_start_36
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Media Router Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    new-instance v77, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v77

    invoke-direct {v0, v3}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_25

    .line 1012
    .end local v76    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v77, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_37
    const-string/jumbo v4, "media_router"

    move-object/from16 v0, v77

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_32

    move-object/from16 v76, v77

    .line 1017
    .end local v77    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1019
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1022
    :try_start_38
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "BackgroundDexOptService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;J)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_26

    .line 1029
    :goto_28
    :try_start_39
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "EdgeGesture service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    new-instance v60, Lcom/android/server/gesture/EdgeGestureService;

    move-object/from16 v0, v60

    move-object/from16 v1, v69

    invoke-direct {v0, v3, v1}, Lcom/android/server/gesture/EdgeGestureService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_27

    .line 1031
    .end local v59    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .local v60, "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    :try_start_3a
    const-string/jumbo v4, "edgegestureservice"

    move-object/from16 v0, v60

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_31

    move-object/from16 v59, v60

    .line 1037
    .end local v60    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    :cond_23
    :goto_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1040
    .end local v87    # "notification":Landroid/app/INotificationManager;
    :goto_2a
    if-nez v54, :cond_24

    .line 1041
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1045
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "adb_port"

    .line 1046
    const-string/jumbo v8, "service.adb.tcp.port"

    const-string/jumbo v9, "-1"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v4, v5, v8}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "adb_port"

    invoke-static {v5}, Lcyanogenmod/providers/CMSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v8, Lcom/android/server/SystemServer$AdbPortObserver;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/server/SystemServer$AdbPortObserver;-><init>(Lcom/android/server/SystemServer;)V

    const/4 v9, 0x0

    .line 1049
    invoke-virtual {v4, v5, v9, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1055
    invoke-virtual/range {v107 .. v107}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v88

    .line 1056
    .local v88, "safeMode":Z
    if-eqz v88, :cond_2f

    .line 1057
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1059
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1066
    :goto_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v79

    .end local v79    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v79, Lcom/android/server/MmsServiceBroker;

    .line 1068
    .local v79, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/4 v4, 0x0

    move-object/from16 v0, v63

    array-length v5, v0

    :goto_2c
    if-ge v4, v5, :cond_30

    aget-object v91, v63, v4

    .line 1070
    .local v91, "service":Ljava/lang/String;
    :try_start_3b
    const-string/jumbo v8, "SystemServer"

    move-object/from16 v0, v91

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, v91

    invoke-virtual {v8, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_28

    .line 1068
    :goto_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 494
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v88    # "safeMode":Z
    .end local v91    # "service":Ljava/lang/String;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v32, "alarm":Landroid/app/IAlarmManager;
    .restart local v35    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v39    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v42    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v44, "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v46, "contentService":Lcom/android/server/content/ContentService;
    .restart local v59    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .restart local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v69, "inputManager":Lcom/android/server/input/InputManagerService;
    .local v79, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v80    # "mountService":Landroid/os/storage/IMountService;
    .restart local v81    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v82    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v85    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v89    # "serial":Lcom/android/server/SerialService;
    .local v92, "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v101    # "vibrator":Lcom/android/server/VibratorService;
    .local v107, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_0
    move-exception v58

    .line 495
    .end local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v58, "e":Ljava/lang/Throwable;
    :goto_2e
    :try_start_3c
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting Account Manager"

    move-object/from16 v0, v58

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catch Ljava/lang/RuntimeException; {:try_start_3c .. :try_end_3c} :catch_1

    goto/16 :goto_0

    .line 555
    .end local v46    # "contentService":Lcom/android/server/content/ContentService;
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v57

    .local v57, "e":Ljava/lang/RuntimeException;
    move-object/from16 v61, v62

    .end local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v61    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v96, v97

    .line 556
    .end local v32    # "alarm":Landroid/app/IAlarmManager;
    .end local v44    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v61    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v101    # "vibrator":Lcom/android/server/VibratorService;
    .end local v107    # "wm":Lcom/android/server/wm/WindowManagerService;
    :goto_2f
    const-string/jumbo v4, "System"

    const-string/jumbo v5, "******************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const-string/jumbo v4, "System"

    const-string/jumbo v5, "************ Failure starting core service"

    move-object/from16 v0, v57

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 500
    .end local v57    # "e":Ljava/lang/RuntimeException;
    .restart local v32    # "alarm":Landroid/app/IAlarmManager;
    .restart local v44    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v46    # "contentService":Lcom/android/server/content/ContentService;
    .restart local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v101    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v107    # "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_25
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 526
    .end local v44    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v101    # "vibrator":Lcom/android/server/VibratorService;
    .local v32, "alarm":Landroid/app/IAlarmManager;
    .restart local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v46, "contentService":Lcom/android/server/content/ContentService;
    .restart local v70    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v102    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v106    # "watchdog":Lcom/android/server/Watchdog;
    :cond_26
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 544
    .local v107, "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_27
    :try_start_3d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_28

    .line 545
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooth Service (factory test)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 555
    .end local v107    # "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_2
    move-exception v57

    .restart local v57    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v61, v62

    .end local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v61    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v44, v45

    .end local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v44, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v96, v97

    .end local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v69, v70

    .end local v70    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v69, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v101, v102

    .end local v102    # "vibrator":Lcom/android/server/VibratorService;
    .local v101, "vibrator":Lcom/android/server/VibratorService;
    goto :goto_2f

    .line 546
    .end local v44    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v57    # "e":Ljava/lang/RuntimeException;
    .end local v61    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v101    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v70    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v102    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v107    # "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_28
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 547
    const-string/jumbo v5, "android.hardware.bluetooth"

    .line 546
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 548
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 549
    :cond_29
    if-eqz v50, :cond_2a

    .line 550
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Bluetooth Service disabled by config"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 552
    :cond_2a
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Bluetooth Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/BluetoothService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_3d
    .catch Ljava/lang/RuntimeException; {:try_start_3d .. :try_end_3d} :catch_2

    goto/16 :goto_3

    .line 578
    .end local v32    # "alarm":Landroid/app/IAlarmManager;
    .end local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v46    # "contentService":Lcom/android/server/content/ContentService;
    .end local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v70    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v102    # "vibrator":Lcom/android/server/VibratorService;
    .end local v106    # "watchdog":Lcom/android/server/Watchdog;
    .end local v107    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v47    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v64    # "gestureService":Lcom/android/server/gesture/GestureService;
    .restart local v67    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v72    # "location":Lcom/android/server/LocationManagerService;
    .restart local v74    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v76    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v87, "notification":Landroid/app/INotificationManager;
    .restart local v93    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v98    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v104    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_3
    move-exception v58

    .line 579
    .end local v67    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v58    # "e":Ljava/lang/Throwable;
    :goto_30
    const-string/jumbo v4, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 586
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v58

    .line 587
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 593
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v58

    .line 594
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 605
    .end local v58    # "e":Ljava/lang/Throwable;
    :cond_2b
    :try_start_3e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.MountService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 607
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 606
    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_6

    move-result-object v80

    .local v80, "mountService":Landroid/os/storage/IMountService;
    goto/16 :goto_8

    .line 608
    .local v80, "mountService":Landroid/os/storage/IMountService;
    :catch_6
    move-exception v58

    .line 609
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 620
    .end local v58    # "e":Ljava/lang/Throwable;
    .end local v80    # "mountService":Landroid/os/storage/IMountService;
    :catch_7
    move-exception v58

    .line 621
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 638
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v58

    .line 639
    .end local v74    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v58    # "e":Ljava/lang/Throwable;
    :goto_31
    const-string/jumbo v4, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 658
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v58

    .line 659
    .end local v93    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v58    # "e":Ljava/lang/Throwable;
    :goto_32
    const-string/jumbo v4, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 668
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v58

    .line 669
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 678
    .end local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v58

    .line 679
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 688
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v58

    .line 689
    .end local v98    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v58    # "e":Ljava/lang/Throwable;
    :goto_33
    const-string/jumbo v4, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 698
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v58

    .line 699
    .end local v82    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v58    # "e":Ljava/lang/Throwable;
    :goto_34
    const-string/jumbo v4, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 706
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v58

    .line 707
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v58    # "e":Ljava/lang/Throwable;
    :goto_35
    const-string/jumbo v4, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 717
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v58

    .restart local v58    # "e":Ljava/lang/Throwable;
    move-object/from16 v2, v81

    .line 718
    .end local v81    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_36
    const-string/jumbo v4, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 740
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v58

    .line 741
    .end local v42    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v58    # "e":Ljava/lang/Throwable;
    :goto_37
    const-string/jumbo v4, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 749
    .end local v58    # "e":Ljava/lang/Throwable;
    .end local v92    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_11
    move-exception v58

    .line 750
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 759
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v58

    .line 760
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 771
    .end local v58    # "e":Ljava/lang/Throwable;
    :cond_2c
    :try_start_3f
    invoke-interface/range {v80 .. v80}, Landroid/os/storage/IMountService;->waitForAsecScan()V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_3f} :catch_13

    goto/16 :goto_15

    .line 772
    :catch_13
    move-exception v66

    .local v66, "ignored":Landroid/os/RemoteException;
    goto/16 :goto_15

    .line 779
    .end local v66    # "ignored":Landroid/os/RemoteException;
    :catch_14
    move-exception v58

    .line 780
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 786
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v58

    .line 787
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 802
    .end local v58    # "e":Ljava/lang/Throwable;
    .local v87, "notification":Landroid/app/INotificationManager;
    :catch_16
    move-exception v58

    .line 803
    .end local v72    # "location":Lcom/android/server/LocationManagerService;
    .restart local v58    # "e":Ljava/lang/Throwable;
    :goto_38
    const-string/jumbo v4, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 810
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v58

    .line 811
    .end local v47    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v58    # "e":Ljava/lang/Throwable;
    :goto_39
    const-string/jumbo v4, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 820
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v58

    .line 821
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 829
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v58

    .line 830
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 839
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v58

    .line 840
    .end local v104    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v58    # "e":Ljava/lang/Throwable;
    :goto_3a
    const-string/jumbo v4, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 848
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v58

    .line 849
    .end local v35    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v58    # "e":Ljava/lang/Throwable;
    :goto_3b
    const-string/jumbo v4, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 866
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v58

    .line 867
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 888
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v58

    .line 889
    .end local v89    # "serial":Lcom/android/server/SerialService;
    .restart local v58    # "e":Ljava/lang/Throwable;
    :goto_3c
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting SerialService"

    move-object/from16 v0, v58

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1f

    .line 919
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v58

    .line 920
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 931
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v58

    .line 932
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 937
    .end local v58    # "e":Ljava/lang/Throwable;
    :cond_2d
    :try_start_40
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "NetworkTimeUpdateService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    new-instance v86, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v86

    invoke-direct {v0, v3}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_20

    .end local v85    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v86, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v85, v86

    .end local v86    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v85, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    goto/16 :goto_22

    .line 939
    .local v85, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_20
    move-exception v58

    .line 940
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 948
    .end local v58    # "e":Ljava/lang/Throwable;
    .end local v85    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_21
    move-exception v58

    .line 949
    .end local v39    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v58    # "e":Ljava/lang/Throwable;
    :goto_3d
    const-string/jumbo v4, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 956
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v58

    .line 957
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 968
    .end local v58    # "e":Ljava/lang/Throwable;
    :cond_2e
    :try_start_41
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Assets Atlas Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    new-instance v34, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v34

    invoke-direct {v0, v3}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_23

    .line 970
    .end local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v34, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_42
    const-string/jumbo v4, "assetatlas"

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_34

    move-object/from16 v33, v34

    .end local v34    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v33, "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_25

    .line 971
    .local v33, "atlas":Lcom/android/server/AssetAtlasService;
    :catch_23
    move-exception v58

    .line 972
    .end local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v58    # "e":Ljava/lang/Throwable;
    :goto_3e
    const-string/jumbo v4, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 987
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v58

    .line 988
    .end local v64    # "gestureService":Lcom/android/server/gesture/GestureService;
    .restart local v58    # "e":Ljava/lang/Throwable;
    :goto_3f
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting Gesture Sensor Service"

    move-object/from16 v0, v58

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_26

    .line 1013
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v58

    .line 1014
    .end local v76    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v58    # "e":Ljava/lang/Throwable;
    :goto_40
    const-string/jumbo v4, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 1024
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v58

    .line 1025
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 1032
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v58

    .line 1033
    .end local v59    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .restart local v58    # "e":Ljava/lang/Throwable;
    :goto_41
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting EdgeGesture service"

    move-object/from16 v0, v58

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_29

    .line 1062
    .end local v58    # "e":Ljava/lang/Throwable;
    .end local v87    # "notification":Landroid/app/INotificationManager;
    .restart local v88    # "safeMode":Z
    :cond_2f
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_2b

    .line 1072
    .local v79, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v91    # "service":Ljava/lang/String;
    :catch_28
    move-exception v58

    .line 1073
    .restart local v58    # "e":Ljava/lang/Throwable;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "starting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v91

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v8, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 1080
    .end local v58    # "e":Ljava/lang/Throwable;
    .end local v91    # "service":Ljava/lang/String;
    :cond_30
    :try_start_43
    invoke-virtual/range {v101 .. v101}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_29

    .line 1085
    :goto_42
    if-eqz v74, :cond_31

    .line 1087
    :try_start_44
    invoke-virtual/range {v74 .. v74}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_2a

    .line 1094
    :cond_31
    :goto_43
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1096
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1099
    :try_start_45
    invoke-virtual/range {v107 .. v107}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_2b

    .line 1104
    :goto_44
    if-eqz v88, :cond_32

    .line 1105
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1111
    :cond_32
    invoke-virtual/range {v107 .. v107}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v41

    .line 1112
    .local v41, "config":Landroid/content/res/Configuration;
    new-instance v78, Landroid/util/DisplayMetrics;

    invoke-direct/range {v78 .. v78}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1113
    .local v78, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v103

    check-cast v103, Landroid/view/WindowManager;

    .line 1114
    .local v103, "w":Landroid/view/WindowManager;
    invoke-interface/range {v103 .. v103}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v78

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1115
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, v41

    move-object/from16 v1, v78

    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1118
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v95

    .line 1119
    .local v95, "systemTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual/range {v95 .. v95}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v4

    if-eqz v4, :cond_33

    .line 1120
    invoke-virtual/range {v95 .. v95}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 1125
    :cond_33
    :try_start_46
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_2c

    .line 1131
    :goto_45
    :try_start_47
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_2d

    .line 1138
    :goto_46
    :try_start_48
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v88

    invoke-virtual {v4, v0, v5}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_2e

    .line 1143
    :goto_47
    if-eqz v64, :cond_34

    .line 1145
    :try_start_49
    invoke-virtual/range {v64 .. v64}, Lcom/android/server/gesture/GestureService;->systemReady()V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_2f

    .line 1151
    :cond_34
    :goto_48
    if-eqz v59, :cond_35

    .line 1153
    :try_start_4a
    invoke-virtual/range {v59 .. v59}, Lcom/android/server/gesture/EdgeGestureService;->systemReady()V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_30

    .line 1160
    :cond_35
    :goto_49
    move-object v12, v7

    .line 1161
    .local v12, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v13, v6

    .line 1162
    .local v13, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object v14, v2

    .line 1163
    .local v14, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v15, v42

    .line 1164
    .local v15, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v11, v82

    .line 1165
    .local v11, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v17, v104

    .line 1166
    .local v17, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v18, v67

    .line 1167
    .local v18, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v20, v72

    .line 1168
    .local v20, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v21, v47

    .line 1169
    .local v21, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v22, v85

    .line 1170
    .local v22, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v23, v39

    .line 1171
    .local v23, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v24, v98

    .line 1172
    .local v24, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v19, v93

    .line 1173
    .local v19, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v25, v33

    .line 1174
    .local v25, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v26, v69

    .line 1175
    .local v26, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v27, v96

    .line 1176
    .local v27, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v28, v76

    .line 1177
    .local v28, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v16, v35

    .line 1178
    .local v16, "audioServiceF":Lcom/android/server/audio/AudioService;
    move-object/from16 v29, v79

    .line 1185
    .local v29, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Lcom/android/server/SystemServer$2;

    move-object/from16 v9, p0

    move-object v10, v3

    invoke-direct/range {v8 .. v29}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/audio/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 428
    return-void

    .line 1081
    .end local v11    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v12    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v13    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v14    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v15    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v16    # "audioServiceF":Lcom/android/server/audio/AudioService;
    .end local v17    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v18    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v19    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v20    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v21    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v22    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v23    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v24    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v25    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v26    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v27    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v28    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v29    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v41    # "config":Landroid/content/res/Configuration;
    .end local v78    # "metrics":Landroid/util/DisplayMetrics;
    .end local v95    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v103    # "w":Landroid/view/WindowManager;
    :catch_29
    move-exception v58

    .line 1082
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .line 1088
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v58

    .line 1089
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .line 1100
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v58

    .line 1101
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 1126
    .end local v58    # "e":Ljava/lang/Throwable;
    .restart local v41    # "config":Landroid/content/res/Configuration;
    .restart local v78    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v95    # "systemTheme":Landroid/content/res/Resources$Theme;
    .restart local v103    # "w":Landroid/view/WindowManager;
    :catch_2c
    move-exception v58

    .line 1127
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 1132
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v58

    .line 1133
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .line 1139
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_2e
    move-exception v58

    .line 1140
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_47

    .line 1146
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_2f
    move-exception v58

    .line 1147
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Gesture Sensor Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48

    .line 1154
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_30
    move-exception v58

    .line 1155
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making EdgeGesture service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49

    .line 1032
    .end local v41    # "config":Landroid/content/res/Configuration;
    .end local v58    # "e":Ljava/lang/Throwable;
    .end local v78    # "metrics":Landroid/util/DisplayMetrics;
    .end local v88    # "safeMode":Z
    .end local v95    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v103    # "w":Landroid/view/WindowManager;
    .restart local v60    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .local v79, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v87    # "notification":Landroid/app/INotificationManager;
    :catch_31
    move-exception v58

    .restart local v58    # "e":Ljava/lang/Throwable;
    move-object/from16 v59, v60

    .end local v60    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .local v59, "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    goto/16 :goto_41

    .line 1013
    .end local v58    # "e":Ljava/lang/Throwable;
    .local v59, "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .restart local v77    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_32
    move-exception v58

    .restart local v58    # "e":Ljava/lang/Throwable;
    move-object/from16 v76, v77

    .end local v77    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v76, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_40

    .line 987
    .end local v58    # "e":Ljava/lang/Throwable;
    .restart local v65    # "gestureService":Lcom/android/server/gesture/GestureService;
    .local v76, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_33
    move-exception v58

    .restart local v58    # "e":Ljava/lang/Throwable;
    move-object/from16 v64, v65

    .end local v65    # "gestureService":Lcom/android/server/gesture/GestureService;
    .local v64, "gestureService":Lcom/android/server/gesture/GestureService;
    goto/16 :goto_3f

    .line 971
    .end local v58    # "e":Ljava/lang/Throwable;
    .restart local v34    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v64, "gestureService":Lcom/android/server/gesture/GestureService;
    :catch_34
    move-exception v58

    .restart local v58    # "e":Ljava/lang/Throwable;
    move-object/from16 v33, v34

    .end local v34    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v33, "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_3e

    .line 948
    .end local v58    # "e":Ljava/lang/Throwable;
    .local v33, "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v40    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_35
    move-exception v58

    .restart local v58    # "e":Ljava/lang/Throwable;
    move-object/from16 v39, v40

    .end local v40    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v39, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_3d

    .line 888
    .end local v58    # "e":Ljava/lang/Throwable;
    .local v39, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v85    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v90    # "serial":Lcom/android/server/SerialService;
    :catch_36
    move-exception v58

    .restart local v58    # "e":Ljava/lang/Throwable;
    move-object/from16 v89, v90

    .end local v90    # "serial":Lcom/android/server/SerialService;
    .local v89, "serial":Lcom/android/server/SerialService;
    goto/16 :goto_3c

    .line 848
    .end local v58    # "e":Ljava/lang/Throwable;
    .restart local v36    # "audioService":Lcom/android/server/audio/AudioService;
    .local v89, "serial":Lcom/android/server/SerialService;
    :catch_37
    move-exception v58

    .restart local v58    # "e":Ljava/lang/Throwable;
    move-object/from16 v35, v36

    .end local v36    # "audioService":Lcom/android/server/audio/AudioService;
    .local v35, "audioService":Lcom/android/server/audio/AudioService;
    goto/16 :goto_3b

    .line 839
    .end local v58    # "e":Ljava/lang/Throwable;
    .local v35, "audioService":Lcom/android/server/audio/AudioService;
    .restart local v105    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_38
    move-exception v58

    .restart local v58    # "e":Ljava/lang/Throwable;
    move-object/from16 v104, v105

    .end local v105    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v104, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_3a

    .line 810
    .end local v58    # "e":Ljava/lang/Throwable;
    .restart local v48    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v104, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_39
    move-exception v58

    .restart local v58    # "e":Ljava/lang/Throwable;
    move-object/from16 v47, v48

    .end local v48    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v47, "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_39

    .line 802
    .end local v58    # "e":Ljava/lang/Throwable;
    .local v47, "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v73    # "location":Lcom/android/server/LocationManagerService;
    :catch_3a
    move-exception v58

    .restart local v58    # "e":Ljava/lang/Throwable;
    move-object/from16 v72, v73

    .end local v73    # "location":Lcom/android/server/LocationManagerService;
    .local v72, "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_38

    .line 740
    .end local v58    # "e":Ljava/lang/Throwable;
    .restart local v43    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v72, "location":Lcom/android/server/LocationManagerService;
    .local v87, "notification":Landroid/app/INotificationManager;
    .restart local v92    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_3b
    move-exception v58

    .restart local v58    # "e":Ljava/lang/Throwable;
    move-object/from16 v42, v43

    .end local v43    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v42, "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_37

    .line 717
    .end local v58    # "e":Ljava/lang/Throwable;
    .local v42, "connectivity":Lcom/android/server/ConnectivityService;
    :catch_3c
    move-exception v58

    .restart local v58    # "e":Ljava/lang/Throwable;
    goto/16 :goto_36

    .line 706
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v58    # "e":Ljava/lang/Throwable;
    .restart local v81    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v84    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_3d
    move-exception v58

    .restart local v58    # "e":Ljava/lang/Throwable;
    move-object/from16 v6, v84

    .end local v84    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_35

    .line 698
    .end local v58    # "e":Ljava/lang/Throwable;
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v83    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_3e
    move-exception v58

    .restart local v58    # "e":Ljava/lang/Throwable;
    move-object/from16 v82, v83

    .end local v83    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v82, "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_34

    .line 688
    .end local v58    # "e":Ljava/lang/Throwable;
    .local v82, "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v99    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_3f
    move-exception v58

    .restart local v58    # "e":Ljava/lang/Throwable;
    move-object/from16 v98, v99

    .end local v99    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v98, "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_33

    .line 658
    .end local v58    # "e":Ljava/lang/Throwable;
    .restart local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v94    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v98, "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_40
    move-exception v58

    .restart local v58    # "e":Ljava/lang/Throwable;
    move-object/from16 v93, v94

    .end local v94    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v93, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_32

    .line 638
    .end local v58    # "e":Ljava/lang/Throwable;
    .restart local v75    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v93, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_41
    move-exception v58

    .restart local v58    # "e":Ljava/lang/Throwable;
    move-object/from16 v74, v75

    .end local v75    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v74, "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_31

    .line 578
    .end local v58    # "e":Ljava/lang/Throwable;
    .restart local v68    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v74, "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v80    # "mountService":Landroid/os/storage/IMountService;
    :catch_42
    move-exception v58

    .restart local v58    # "e":Ljava/lang/Throwable;
    move-object/from16 v67, v68

    .end local v68    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v67, "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_30

    .line 555
    .end local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v47    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v58    # "e":Ljava/lang/Throwable;
    .end local v64    # "gestureService":Lcom/android/server/gesture/GestureService;
    .end local v67    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v72    # "location":Lcom/android/server/LocationManagerService;
    .end local v74    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v76    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v87    # "notification":Landroid/app/INotificationManager;
    .end local v93    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v98    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v104    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v32, "alarm":Landroid/app/IAlarmManager;
    .local v44, "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v46, "contentService":Lcom/android/server/content/ContentService;
    .local v61, "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v69, "inputManager":Lcom/android/server/input/InputManagerService;
    .local v96, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v101, "vibrator":Lcom/android/server/VibratorService;
    .local v107, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_43
    move-exception v57

    .restart local v57    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_2f

    .end local v57    # "e":Ljava/lang/RuntimeException;
    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_44
    move-exception v57

    .restart local v57    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v96, v97

    .end local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v96, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_2f

    .end local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v57    # "e":Ljava/lang/RuntimeException;
    .end local v61    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_45
    move-exception v57

    .restart local v57    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v61, v62

    .end local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v61, "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v96, v97

    .end local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v30, v31

    .end local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v30, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_2f

    .end local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v57    # "e":Ljava/lang/RuntimeException;
    .end local v61    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v101    # "vibrator":Lcom/android/server/VibratorService;
    .local v46, "contentService":Lcom/android/server/content/ContentService;
    .restart local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v102    # "vibrator":Lcom/android/server/VibratorService;
    :catch_46
    move-exception v57

    .restart local v57    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v61, v62

    .end local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v61    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v96, v97

    .end local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v101, v102

    .end local v102    # "vibrator":Lcom/android/server/VibratorService;
    .local v101, "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_2f

    .end local v32    # "alarm":Landroid/app/IAlarmManager;
    .end local v44    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v57    # "e":Ljava/lang/RuntimeException;
    .end local v61    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v101    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v102    # "vibrator":Lcom/android/server/VibratorService;
    :catch_47
    move-exception v57

    .restart local v57    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v61, v62

    .end local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v61    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v44, v45

    .end local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v44, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v96, v97

    .end local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v101, v102

    .end local v102    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v101    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_2f

    .line 494
    .end local v57    # "e":Ljava/lang/RuntimeException;
    .end local v61    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v32    # "alarm":Landroid/app/IAlarmManager;
    .local v44, "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v46, "contentService":Lcom/android/server/content/ContentService;
    .restart local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v101, "vibrator":Lcom/android/server/VibratorService;
    :catch_48
    move-exception v58

    .restart local v58    # "e":Ljava/lang/Throwable;
    move-object/from16 v30, v31

    .end local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_2e

    .end local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v32    # "alarm":Landroid/app/IAlarmManager;
    .end local v44    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v46    # "contentService":Lcom/android/server/content/ContentService;
    .end local v58    # "e":Ljava/lang/Throwable;
    .end local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v80    # "mountService":Landroid/os/storage/IMountService;
    .end local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v101    # "vibrator":Lcom/android/server/VibratorService;
    .end local v107    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v47    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v64    # "gestureService":Lcom/android/server/gesture/GestureService;
    .restart local v72    # "location":Lcom/android/server/LocationManagerService;
    .restart local v76    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v87    # "notification":Landroid/app/INotificationManager;
    .restart local v104    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_36
    move-object/from16 v2, v81

    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_13

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v74    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v93    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v98    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_37
    move-object/from16 v2, v81

    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_2a
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1313
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1314
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    .line 1315
    const-string/jumbo v3, "com.android.systemui.SystemUIService"

    .line 1314
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1317
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1312
    return-void
.end method

.method flymeGetFieldPackageManagerService()Lcom/android/server/pm/PackageManagerService;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method flymeGetFieldSystemContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    return-object v0
.end method
