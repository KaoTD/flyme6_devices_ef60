.class public Lcom/android/internal/policy/Policy;
.super Ljava/lang/Object;
.source "Policy.java"

# interfaces
.implements Lcom/android/internal/policy/IPolicy;


# static fields
.field private static final TAG:Ljava/lang/String; = "PhonePolicy"

.field private static final preload_classes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 37
    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    .line 38
    const-string/jumbo v4, "com.android.internal.policy.PhoneLayoutInflater"

    aput-object v4, v3, v2

    .line 39
    const-string/jumbo v4, "com.android.internal.policy.PhoneWindow"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 40
    const-string/jumbo v4, "com.android.internal.policy.PhoneWindow$1"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 41
    const-string/jumbo v4, "com.android.internal.policy.PhoneWindow$DialogMenuCallback"

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 42
    const-string/jumbo v4, "com.android.internal.policy.PhoneWindow$DecorView"

    const/4 v5, 0x4

    aput-object v4, v3, v5

    .line 43
    const-string/jumbo v4, "com.android.internal.policy.PhoneWindow$PanelFeatureState"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    .line 44
    const-string/jumbo v4, "com.android.internal.policy.PhoneWindow$PanelFeatureState$SavedState"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    .line 37
    sput-object v3, Lcom/android/internal/policy/Policy;->preload_classes:[Ljava/lang/String;

    .line 50
    sget-object v3, Lcom/android/internal/policy/Policy;->preload_classes:[Ljava/lang/String;

    array-length v4, v3

    .local v1, "s":Ljava/lang/String;
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 52
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v5, "PhonePolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not preload class for phone policy: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 34
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeNewFallbackEventHandler(Landroid/content/Context;)Landroid/view/FallbackEventHandler;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    new-instance v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeNewLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    new-instance v0, Lcom/android/internal/policy/PhoneLayoutInflater;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/PhoneLayoutInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeNewWindow(Landroid/content/Context;)Landroid/view/Window;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    new-instance v0, Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
