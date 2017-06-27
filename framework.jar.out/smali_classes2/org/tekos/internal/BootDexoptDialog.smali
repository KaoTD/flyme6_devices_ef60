.class public Lorg/tekos/internal/BootDexoptDialog;
.super Landroid/app/Dialog;
.source "BootDexoptDialog.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final PROP_DEXOPT_NO_ICON:Ljava/lang/String; = "persist.sys.dexopt.no_icon"


# instance fields
.field private mBootDexoptIcon:Landroid/widget/ImageView;

.field private mBootDexoptMsg:Landroid/widget/TextView;

.field private mBootDexoptMsgDetail:Landroid/widget/TextView;

.field private mBootDexoptProgress:Landroid/widget/ProgressBar;

.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mShouldShowIcon:Z

.field private mTotal:I

.field private mWasApk:Z


# direct methods
.method static synthetic -get0(Lorg/tekos/internal/BootDexoptDialog;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lorg/tekos/internal/BootDexoptDialog;->mBootDexoptIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get1(Lorg/tekos/internal/BootDexoptDialog;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/tekos/internal/BootDexoptDialog;->mBootDexoptMsg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lorg/tekos/internal/BootDexoptDialog;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/tekos/internal/BootDexoptDialog;->mBootDexoptMsgDetail:Landroid/widget/TextView;

    return-object v0
.end method

.method private constructor <init>(Landroid/content/Context;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I
    .param p3, "windowType"    # I

    .prologue
    const/4 v8, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 82
    iput-object p1, p0, Lorg/tekos/internal/BootDexoptDialog;->mContext:Landroid/content/Context;

    .line 83
    iget-object v4, p0, Lorg/tekos/internal/BootDexoptDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lorg/tekos/internal/BootDexoptDialog;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 85
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/app/ActivityManager;->isForcedHighEndGfx()Z

    move-result v3

    .line 86
    :goto_0
    const-string/jumbo v7, "persist.sys.dexopt.no_icon"

    if-eqz v3, :cond_2

    move v4, v5

    :goto_1
    invoke-static {v7, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lorg/tekos/internal/BootDexoptDialog;->mShouldShowIcon:Z

    .line 88
    iget-object v4, p0, Lorg/tekos/internal/BootDexoptDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 89
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x1090039

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 90
    .local v0, "bootMsgLayout":Landroid/view/View;
    const v4, 0x1020316

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lorg/tekos/internal/BootDexoptDialog;->mBootDexoptMsg:Landroid/widget/TextView;

    .line 91
    const v4, 0x1020317

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lorg/tekos/internal/BootDexoptDialog;->mBootDexoptMsgDetail:Landroid/widget/TextView;

    .line 92
    const v4, 0x1020315

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lorg/tekos/internal/BootDexoptDialog;->mBootDexoptIcon:Landroid/widget/ImageView;

    .line 93
    const v4, 0x1020318

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lorg/tekos/internal/BootDexoptDialog;->mBootDexoptProgress:Landroid/widget/ProgressBar;

    .line 95
    invoke-virtual {p0, v6}, Lorg/tekos/internal/BootDexoptDialog;->requestWindowFeature(I)Z

    .line 96
    invoke-virtual {p0, v0}, Lorg/tekos/internal/BootDexoptDialog;->setContentView(Landroid/view/View;)V

    .line 98
    if-eqz p3, :cond_0

    .line 99
    invoke-virtual {p0}, Lorg/tekos/internal/BootDexoptDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/view/Window;->setType(I)V

    .line 101
    :cond_0
    invoke-virtual {p0}, Lorg/tekos/internal/BootDexoptDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Landroid/view/Window;->setLayout(II)V

    .line 102
    invoke-virtual {p0}, Lorg/tekos/internal/BootDexoptDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v6, 0x500

    invoke-virtual {v4, v6}, Landroid/view/Window;->addFlags(I)V

    .line 104
    invoke-virtual {p0}, Lorg/tekos/internal/BootDexoptDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 106
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v4, 0x0

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 107
    const/4 v4, 0x5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 108
    invoke-virtual {p0}, Lorg/tekos/internal/BootDexoptDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 109
    invoke-virtual {p0, v5}, Lorg/tekos/internal/BootDexoptDialog;->setCancelable(Z)V

    .line 110
    invoke-virtual {p0}, Lorg/tekos/internal/BootDexoptDialog;->show()V

    .line 112
    new-instance v4, Lorg/tekos/internal/BootDexoptDialog$1;

    invoke-direct {v4, p0}, Lorg/tekos/internal/BootDexoptDialog$1;-><init>(Lorg/tekos/internal/BootDexoptDialog;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 80
    return-void

    .line 85
    .end local v0    # "bootMsgLayout":Landroid/view/View;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    const/4 v3, 0x1

    .local v3, "useFancyEffects":Z
    goto/16 :goto_0

    .end local v3    # "useFancyEffects":Z
    :cond_2
    move v4, v6

    .line 86
    goto/16 :goto_1

    :cond_3
    move v4, v6

    goto/16 :goto_2
.end method

.method public static create(Landroid/content/Context;)Lorg/tekos/internal/BootDexoptDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/16 v0, 0x7e5

    invoke-static {p0, v0}, Lorg/tekos/internal/BootDexoptDialog;->create(Landroid/content/Context;I)Lorg/tekos/internal/BootDexoptDialog;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;I)Lorg/tekos/internal/BootDexoptDialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "windowType"    # I

    .prologue
    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 68
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v2, "android.hardware.type.television"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "android.software.leanback"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    :cond_0
    const v1, 0x10304c6

    .line 77
    .local v1, "theme":I
    :goto_0
    new-instance v2, Lorg/tekos/internal/BootDexoptDialog;

    invoke-direct {v2, p0, v1, p1}, Lorg/tekos/internal/BootDexoptDialog;-><init>(Landroid/content/Context;II)V

    return-object v2

    .line 70
    .end local v1    # "theme":I
    :cond_1
    const-string/jumbo v2, "android.hardware.type.watch"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    const v1, 0x10304a5

    .restart local v1    # "theme":I
    goto :goto_0

    .line 74
    .end local v1    # "theme":I
    :cond_2
    const v1, 0x1030237

    .restart local v1    # "theme":I
    goto :goto_0
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 186
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 194
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method public setProgress(Landroid/content/pm/ApplicationInfo;II)V
    .locals 10
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "current"    # I
    .param p3, "total"    # I

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "isApk":Z
    const-string/jumbo v2, ""

    .line 128
    .local v2, "msg":Ljava/lang/String;
    iget v3, p0, Lorg/tekos/internal/BootDexoptDialog;->mTotal:I

    if-eq v3, p3, :cond_0

    if-lez p3, :cond_0

    .line 129
    iput p3, p0, Lorg/tekos/internal/BootDexoptDialog;->mTotal:I

    .line 130
    iget-object v3, p0, Lorg/tekos/internal/BootDexoptDialog;->mBootDexoptProgress:Landroid/widget/ProgressBar;

    iget v4, p0, Lorg/tekos/internal/BootDexoptDialog;->mTotal:I

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 133
    :cond_0
    if-nez p1, :cond_6

    .line 134
    const/high16 v3, -0x80000000

    if-ne p2, v3, :cond_4

    .line 135
    iget-object v3, p0, Lorg/tekos/internal/BootDexoptDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10403fe

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 155
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lorg/tekos/internal/BootDexoptDialog;->mWasApk:Z

    if-eq v3, v0, :cond_2

    .line 156
    iput-boolean v0, p0, Lorg/tekos/internal/BootDexoptDialog;->mWasApk:Z

    .line 157
    if-eqz v0, :cond_8

    .line 158
    iget-object v3, p0, Lorg/tekos/internal/BootDexoptDialog;->mBootDexoptMsgDetail:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    iget-object v3, p0, Lorg/tekos/internal/BootDexoptDialog;->mBootDexoptProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 167
    :cond_2
    :goto_1
    if-eqz v0, :cond_9

    .line 168
    iget-boolean v3, p0, Lorg/tekos/internal/BootDexoptDialog;->mShouldShowIcon:Z

    if-eqz v3, :cond_3

    .line 169
    iget-object v3, p0, Lorg/tekos/internal/BootDexoptDialog;->mBootDexoptIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lorg/tekos/internal/BootDexoptDialog;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    :cond_3
    iget-object v3, p0, Lorg/tekos/internal/BootDexoptDialog;->mBootDexoptMsgDetail:Landroid/widget/TextView;

    const-string/jumbo v4, "(%s)"

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    :goto_2
    iget-object v3, p0, Lorg/tekos/internal/BootDexoptDialog;->mBootDexoptMsg:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    return-void

    .line 136
    :cond_4
    const v3, -0x7fffffff

    if-ne p2, v3, :cond_5

    .line 137
    iget-object v3, p0, Lorg/tekos/internal/BootDexoptDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10403fb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 138
    :cond_5
    const v3, -0x7ffffffd

    if-ne p2, v3, :cond_1

    .line 139
    iget-object v3, p0, Lorg/tekos/internal/BootDexoptDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10403ff

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 141
    :cond_6
    const v3, -0x7ffffffe

    if-ne p2, v3, :cond_7

    .line 142
    iget-object v3, p0, Lorg/tekos/internal/BootDexoptDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 143
    .local v1, "label":Ljava/lang/CharSequence;
    iget-object v3, p0, Lorg/tekos/internal/BootDexoptDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v7

    const v5, 0x10403fd

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 145
    .end local v1    # "label":Ljava/lang/CharSequence;
    :cond_7
    const/4 v0, 0x1

    .line 146
    iget-object v3, p0, Lorg/tekos/internal/BootDexoptDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x10403fc

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 147
    iget-object v3, p0, Lorg/tekos/internal/BootDexoptDialog;->mBootDexoptProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 149
    add-int/lit8 v3, p2, 0x1

    if-gt v3, p3, :cond_1

    .line 150
    iget-object v3, p0, Lorg/tekos/internal/BootDexoptDialog;->mBootDexoptProgress:Landroid/widget/ProgressBar;

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    goto/16 :goto_0

    .line 161
    :cond_8
    iget-object v3, p0, Lorg/tekos/internal/BootDexoptDialog;->mBootDexoptMsgDetail:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v3, p0, Lorg/tekos/internal/BootDexoptDialog;->mBootDexoptProgress:Landroid/widget/ProgressBar;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_1

    .line 173
    :cond_9
    iget-object v3, p0, Lorg/tekos/internal/BootDexoptDialog;->mBootDexoptIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2
.end method
