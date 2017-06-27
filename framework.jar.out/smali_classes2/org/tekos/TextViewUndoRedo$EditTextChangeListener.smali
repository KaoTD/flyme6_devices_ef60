.class final Lorg/tekos/TextViewUndoRedo$EditTextChangeListener;
.super Ljava/lang/Object;
.source "TextViewUndoRedo.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tekos/TextViewUndoRedo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EditTextChangeListener"
.end annotation


# instance fields
.field private mAfterChange:Ljava/lang/CharSequence;

.field private mBeforeChange:Ljava/lang/CharSequence;

.field final synthetic this$0:Lorg/tekos/TextViewUndoRedo;


# direct methods
.method private constructor <init>(Lorg/tekos/TextViewUndoRedo;)V
    .locals 0
    .param p1, "this$0"    # Lorg/tekos/TextViewUndoRedo;

    .prologue
    .line 363
    iput-object p1, p0, Lorg/tekos/TextViewUndoRedo$EditTextChangeListener;->this$0:Lorg/tekos/TextViewUndoRedo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/tekos/TextViewUndoRedo;Lorg/tekos/TextViewUndoRedo$EditTextChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Lorg/tekos/TextViewUndoRedo;

    .prologue
    invoke-direct {p0, p1}, Lorg/tekos/TextViewUndoRedo$EditTextChangeListener;-><init>(Lorg/tekos/TextViewUndoRedo;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 394
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 377
    iget-object v0, p0, Lorg/tekos/TextViewUndoRedo$EditTextChangeListener;->this$0:Lorg/tekos/TextViewUndoRedo;

    invoke-static {v0}, Lorg/tekos/TextViewUndoRedo;->-get1(Lorg/tekos/TextViewUndoRedo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    return-void

    .line 381
    :cond_0
    add-int v0, p2, p3

    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lorg/tekos/TextViewUndoRedo$EditTextChangeListener;->mBeforeChange:Ljava/lang/CharSequence;

    .line 376
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 386
    iget-object v0, p0, Lorg/tekos/TextViewUndoRedo$EditTextChangeListener;->this$0:Lorg/tekos/TextViewUndoRedo;

    invoke-static {v0}, Lorg/tekos/TextViewUndoRedo;->-get1(Lorg/tekos/TextViewUndoRedo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    return-void

    .line 390
    :cond_0
    add-int v0, p2, p4

    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lorg/tekos/TextViewUndoRedo$EditTextChangeListener;->mAfterChange:Ljava/lang/CharSequence;

    .line 391
    iget-object v0, p0, Lorg/tekos/TextViewUndoRedo$EditTextChangeListener;->this$0:Lorg/tekos/TextViewUndoRedo;

    invoke-static {v0}, Lorg/tekos/TextViewUndoRedo;->-get0(Lorg/tekos/TextViewUndoRedo;)Lorg/tekos/TextViewUndoRedo$EditHistory;

    move-result-object v0

    new-instance v1, Lorg/tekos/TextViewUndoRedo$EditItem;

    iget-object v2, p0, Lorg/tekos/TextViewUndoRedo$EditTextChangeListener;->this$0:Lorg/tekos/TextViewUndoRedo;

    iget-object v3, p0, Lorg/tekos/TextViewUndoRedo$EditTextChangeListener;->mBeforeChange:Ljava/lang/CharSequence;

    iget-object v4, p0, Lorg/tekos/TextViewUndoRedo$EditTextChangeListener;->mAfterChange:Ljava/lang/CharSequence;

    invoke-direct {v1, v2, p2, v3, v4}, Lorg/tekos/TextViewUndoRedo$EditItem;-><init>(Lorg/tekos/TextViewUndoRedo;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lorg/tekos/TextViewUndoRedo$EditHistory;->-wrap2(Lorg/tekos/TextViewUndoRedo$EditHistory;Lorg/tekos/TextViewUndoRedo$EditItem;)V

    .line 385
    return-void
.end method
