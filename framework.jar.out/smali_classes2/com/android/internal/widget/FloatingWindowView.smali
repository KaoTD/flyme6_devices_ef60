.class public Lcom/android/internal/widget/FloatingWindowView;
.super Landroid/widget/RelativeLayout;
.source "FloatingWindowView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static final ID_OVERLAY_VIEW:I = 0xf4240


# instance fields
.field private final SNAP_BOTTOM:I

.field private final SNAP_LEFT:I

.field private final SNAP_RIGHT:I

.field private final SNAP_TOP:I

.field private mAppLabel:Landroid/widget/TextView;

.field private mContentViews:Landroid/view/View;

.field private mDividerViews:Landroid/view/View;

.field private mResource:Landroid/content/res/Resources;

.field private mTitleBarClose:Landroid/widget/ImageButton;

.field private mTitleBarHeader:Landroid/widget/RelativeLayout;

.field private mTitleBarMax:Landroid/widget/ImageButton;

.field private mTitleBarMin:Landroid/widget/ImageButton;

.field private mTitleBarMore:Landroid/widget/ImageButton;


# direct methods
.method static synthetic -get0(Lcom/android/internal/widget/FloatingWindowView;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarMax:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/widget/FloatingWindowView;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarMin:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 19
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "height"    # I

    .prologue
    .line 48
    invoke-direct/range {p0 .. p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/FloatingWindowView;->SNAP_LEFT:I

    .line 33
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/FloatingWindowView;->SNAP_TOP:I

    .line 34
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/FloatingWindowView;->SNAP_RIGHT:I

    .line 35
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/FloatingWindowView;->SNAP_BOTTOM:I

    .line 49
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mResource:Landroid/content/res/Resources;

    .line 51
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mResource:Landroid/content/res/Resources;

    const v3, 0x1090060

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v17

    .line 52
    .local v17, "parser":Landroid/content/res/XmlResourceParser;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 54
    const v2, 0xf4240

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/FloatingWindowView;->setId(I)V

    .line 55
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/FloatingWindowView;->setIsRootNamespace(Z)V

    .line 57
    const v2, 0x1020337

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/FloatingWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mContentViews:Landroid/view/View;

    .line 58
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mContentViews:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 60
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/FloatingWindowView;->setIsRootNamespace(Z)V

    .line 63
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    .line 65
    .local v12, "decorView":Landroid/widget/FrameLayout;
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 67
    .local v11, "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/FrameLayout$LayoutParams;

    .line 68
    .local v16, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 69
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    const-string/jumbo v2, "floating_window_titlebar"

    .line 71
    const v3, 0x1020338

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/widget/FloatingWindowView;->findViewByIdHelper(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarHeader:Landroid/widget/RelativeLayout;

    .line 73
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarHeader:Landroid/widget/RelativeLayout;

    .line 74
    const-string/jumbo v3, "floating_window_more"

    .line 73
    const v6, 0x102033e

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v3}, Lcom/android/internal/widget/FloatingWindowView;->findViewByIdHelper(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarMore:Landroid/widget/ImageButton;

    .line 75
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarHeader:Landroid/widget/RelativeLayout;

    .line 76
    const-string/jumbo v3, "floating_window_close"

    .line 75
    const v6, 0x1020339

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v3}, Lcom/android/internal/widget/FloatingWindowView;->findViewByIdHelper(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarClose:Landroid/widget/ImageButton;

    .line 77
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarHeader:Landroid/widget/RelativeLayout;

    .line 78
    const-string/jumbo v3, "floating_window_min"

    .line 77
    const v6, 0x102033a

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v3}, Lcom/android/internal/widget/FloatingWindowView;->findViewByIdHelper(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarMin:Landroid/widget/ImageButton;

    .line 79
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarHeader:Landroid/widget/RelativeLayout;

    .line 80
    const-string/jumbo v3, "floating_window_max"

    .line 79
    const v6, 0x102033b

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v3}, Lcom/android/internal/widget/FloatingWindowView;->findViewByIdHelper(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarMax:Landroid/widget/ImageButton;

    .line 81
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarHeader:Landroid/widget/RelativeLayout;

    .line 82
    const-string/jumbo v3, "floating_window_label"

    .line 81
    const v6, 0x102033c

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v3}, Lcom/android/internal/widget/FloatingWindowView;->findViewByIdHelper(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mAppLabel:Landroid/widget/TextView;

    .line 83
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarHeader:Landroid/widget/RelativeLayout;

    .line 84
    const-string/jumbo v3, "floating_window_line"

    .line 83
    const v6, 0x102033f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v3}, Lcom/android/internal/widget/FloatingWindowView;->findViewByIdHelper(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mDividerViews:Landroid/view/View;

    .line 86
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarHeader:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 87
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarClose:Landroid/widget/ImageButton;

    if-nez v2, :cond_1

    .line 93
    :cond_0
    return-void

    .line 88
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarMore:Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    .line 89
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarMin:Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    .line 90
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarMax:Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    .line 91
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mAppLabel:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 92
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mDividerViews:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 96
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarClose:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingWindowView;->mResource:Landroid/content/res/Resources;

    const v6, 0x108034b

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarClose:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/internal/widget/FloatingWindowView$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/android/internal/widget/FloatingWindowView$1;-><init>(Lcom/android/internal/widget/FloatingWindowView;Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarMin:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingWindowView;->mResource:Landroid/content/res/Resources;

    const v6, 0x108034d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarMin:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarMin:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/internal/widget/FloatingWindowView$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/android/internal/widget/FloatingWindowView$2;-><init>(Lcom/android/internal/widget/FloatingWindowView;Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarMax:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingWindowView;->mResource:Landroid/content/res/Resources;

    const v6, 0x108034c

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarMax:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarMax:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/internal/widget/FloatingWindowView$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/android/internal/widget/FloatingWindowView$3;-><init>(Lcom/android/internal/widget/FloatingWindowView;Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mAppLabel:Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarMore:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingWindowView;->mResource:Landroid/content/res/Resources;

    const v6, 0x108034e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mResource:Landroid/content/res/Resources;

    const v3, 0x1040095

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, "menu_item1":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mResource:Landroid/content/res/Resources;

    const v3, 0x1040096

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 129
    .local v7, "menu_item2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mResource:Landroid/content/res/Resources;

    const v3, 0x1040097

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 130
    .local v8, "menu_item3":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mResource:Landroid/content/res/Resources;

    const v3, 0x1040098

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 131
    .local v9, "menu_item4":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mResource:Landroid/content/res/Resources;

    const v3, 0x1040099

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 133
    .local v10, "menu_item5":Ljava/lang/String;
    new-instance v4, Landroid/widget/PopupMenu;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarMore:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarMore:Landroid/widget/ImageButton;

    invoke-direct {v4, v2, v3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 134
    .local v4, "popupMenu":Landroid/widget/PopupMenu;
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v15

    .line 135
    .local v15, "menu":Landroid/view/Menu;
    invoke-interface {v15, v5}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 136
    invoke-interface {v15, v7}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 137
    invoke-interface {v15, v8}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 138
    invoke-interface {v15, v9}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 139
    invoke-interface {v15, v10}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarMore:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    new-instance v2, Lcom/android/internal/widget/FloatingWindowView$4;

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/widget/FloatingWindowView$4;-><init>(Lcom/android/internal/widget/FloatingWindowView;Landroid/widget/PopupMenu;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarHeader:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 166
    .local v14, "header_param":Landroid/widget/RelativeLayout$LayoutParams;
    move/from16 v0, p2

    iput v0, v14, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarHeader:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v14}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarHeader:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/android/internal/widget/FloatingWindowView$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/android/internal/widget/FloatingWindowView$5;-><init>(Lcom/android/internal/widget/FloatingWindowView;Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mDividerViews:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .line 203
    .local v13, "divider_param":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, 0x2

    iput v2, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/FloatingWindowView;->mDividerViews:Landroid/view/View;

    invoke-virtual {v2, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    return-void
.end method

.method private findViewByIdHelper(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # I
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 208
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 209
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    .line 210
    invoke-direct {p0, p1, p3}, Lcom/android/internal/widget/FloatingWindowView;->findViewWithTag(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 212
    :cond_0
    return-object v0
.end method

.method private findViewWithTag(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 218
    return-object p1

    .line 221
    :cond_0
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    move-object v2, p1

    .line 222
    check-cast v2, Landroid/view/ViewGroup;

    .line 223
    .local v2, "group":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 224
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 225
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, v0, p2}, Lcom/android/internal/widget/FloatingWindowView;->findViewWithTag(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 226
    .local v1, "found":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 227
    return-object v1

    .line 223
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 231
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "found":Landroid/view/View;
    .end local v2    # "group":Landroid/view/ViewGroup;
    .end local v3    # "i":I
    :cond_2
    return-object v5
.end method

.method public static final getParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 268
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 270
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 271
    return-object v0
.end method

.method private makeOutline(II)Landroid/graphics/drawable/ShapeDrawable;
    .locals 3
    .param p1, "color"    # I
    .param p2, "thickness"    # I

    .prologue
    .line 259
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 260
    .local v1, "rectShapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 261
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 262
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 263
    int-to-float v2, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 264
    return-object v1
.end method


# virtual methods
.method public setFloatingBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarHeader:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView;->mContentViews:Landroid/view/View;

    if-nez v0, :cond_1

    .line 237
    :cond_0
    return-void

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarHeader:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 234
    return-void
.end method

.method public setFloatingColorFilter(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarClose:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarMin:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    .line 248
    :cond_0
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarMax:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarMore:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView;->mDividerViews:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarMore:Landroid/widget/ImageButton;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 251
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarClose:Landroid/widget/ImageButton;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 252
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarMin:Landroid/widget/ImageButton;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 253
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView;->mTitleBarMax:Landroid/widget/ImageButton;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 254
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView;->mAppLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 255
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView;->mDividerViews:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 242
    return-void
.end method
