.class final Lorg/tekos/TextViewUndoRedo$EditItem;
.super Ljava/lang/Object;
.source "TextViewUndoRedo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tekos/TextViewUndoRedo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EditItem"
.end annotation


# instance fields
.field private final mmAfter:Ljava/lang/CharSequence;

.field private final mmBefore:Ljava/lang/CharSequence;

.field private final mmStart:I

.field final synthetic this$0:Lorg/tekos/TextViewUndoRedo;


# direct methods
.method static synthetic -get0(Lorg/tekos/TextViewUndoRedo$EditItem;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lorg/tekos/TextViewUndoRedo$EditItem;->mmAfter:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get1(Lorg/tekos/TextViewUndoRedo$EditItem;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lorg/tekos/TextViewUndoRedo$EditItem;->mmBefore:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get2(Lorg/tekos/TextViewUndoRedo$EditItem;)I
    .locals 1

    iget v0, p0, Lorg/tekos/TextViewUndoRedo$EditItem;->mmStart:I

    return v0
.end method

.method public constructor <init>(Lorg/tekos/TextViewUndoRedo;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Lorg/tekos/TextViewUndoRedo;
    .param p2, "start"    # I
    .param p3, "before"    # Ljava/lang/CharSequence;
    .param p4, "after"    # Ljava/lang/CharSequence;

    .prologue
    .line 353
    iput-object p1, p0, Lorg/tekos/TextViewUndoRedo$EditItem;->this$0:Lorg/tekos/TextViewUndoRedo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput p2, p0, Lorg/tekos/TextViewUndoRedo$EditItem;->mmStart:I

    .line 355
    iput-object p3, p0, Lorg/tekos/TextViewUndoRedo$EditItem;->mmBefore:Ljava/lang/CharSequence;

    .line 356
    iput-object p4, p0, Lorg/tekos/TextViewUndoRedo$EditItem;->mmAfter:Ljava/lang/CharSequence;

    .line 353
    return-void
.end method
