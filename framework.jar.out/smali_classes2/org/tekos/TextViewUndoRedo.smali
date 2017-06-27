.class public Lorg/tekos/TextViewUndoRedo;
.super Ljava/lang/Object;
.source "TextViewUndoRedo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tekos/TextViewUndoRedo$EditHistory;,
        Lorg/tekos/TextViewUndoRedo$EditItem;,
        Lorg/tekos/TextViewUndoRedo$EditTextChangeListener;
    }
.end annotation


# instance fields
.field private mChangeListener:Lorg/tekos/TextViewUndoRedo$EditTextChangeListener;

.field private mEditHistory:Lorg/tekos/TextViewUndoRedo$EditHistory;

.field private mIsUndoOrRedo:Z

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lorg/tekos/TextViewUndoRedo;)Lorg/tekos/TextViewUndoRedo$EditHistory;
    .locals 1

    iget-object v0, p0, Lorg/tekos/TextViewUndoRedo;->mEditHistory:Lorg/tekos/TextViewUndoRedo$EditHistory;

    return-object v0
.end method

.method static synthetic -get1(Lorg/tekos/TextViewUndoRedo;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/tekos/TextViewUndoRedo;->mIsUndoOrRedo:Z

    return v0
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tekos/TextViewUndoRedo;->mIsUndoOrRedo:Z

    .line 58
    iput-object p1, p0, Lorg/tekos/TextViewUndoRedo;->mTextView:Landroid/widget/TextView;

    .line 59
    new-instance v0, Lorg/tekos/TextViewUndoRedo$EditHistory;

    invoke-direct {v0, p0, v1}, Lorg/tekos/TextViewUndoRedo$EditHistory;-><init>(Lorg/tekos/TextViewUndoRedo;Lorg/tekos/TextViewUndoRedo$EditHistory;)V

    iput-object v0, p0, Lorg/tekos/TextViewUndoRedo;->mEditHistory:Lorg/tekos/TextViewUndoRedo$EditHistory;

    .line 60
    new-instance v0, Lorg/tekos/TextViewUndoRedo$EditTextChangeListener;

    invoke-direct {v0, p0, v1}, Lorg/tekos/TextViewUndoRedo$EditTextChangeListener;-><init>(Lorg/tekos/TextViewUndoRedo;Lorg/tekos/TextViewUndoRedo$EditTextChangeListener;)V

    iput-object v0, p0, Lorg/tekos/TextViewUndoRedo;->mChangeListener:Lorg/tekos/TextViewUndoRedo$EditTextChangeListener;

    .line 61
    iget-object v0, p0, Lorg/tekos/TextViewUndoRedo;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/tekos/TextViewUndoRedo;->mChangeListener:Lorg/tekos/TextViewUndoRedo$EditTextChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 57
    return-void
.end method

.method private doRestorePersistentState(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .locals 10
    .param p1, "sp"    # Landroid/content/SharedPreferences;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 201
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".hash"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "hash":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 204
    const/4 v7, 0x1

    return v7

    .line 207
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Lorg/tekos/TextViewUndoRedo;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    if-eq v7, v8, :cond_1

    .line 208
    const/4 v7, 0x0

    return v7

    .line 211
    :cond_1
    iget-object v7, p0, Lorg/tekos/TextViewUndoRedo;->mEditHistory:Lorg/tekos/TextViewUndoRedo$EditHistory;

    invoke-static {v7}, Lorg/tekos/TextViewUndoRedo$EditHistory;->-wrap3(Lorg/tekos/TextViewUndoRedo$EditHistory;)V

    .line 212
    iget-object v7, p0, Lorg/tekos/TextViewUndoRedo;->mEditHistory:Lorg/tekos/TextViewUndoRedo$EditHistory;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".maxSize"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v7, v8}, Lorg/tekos/TextViewUndoRedo$EditHistory;->-set0(Lorg/tekos/TextViewUndoRedo$EditHistory;I)I

    .line 214
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".size"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 215
    .local v2, "count":I
    const/4 v7, -0x1

    if-ne v2, v7, :cond_2

    .line 216
    const/4 v7, 0x0

    return v7

    .line 219
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_5

    .line 220
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 222
    .local v5, "pre":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".start"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 223
    .local v6, "start":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".before"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "before":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".after"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "after":Ljava/lang/String;
    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    if-nez v1, :cond_4

    .line 227
    :cond_3
    const/4 v7, 0x0

    return v7

    .line 226
    :cond_4
    if-eqz v0, :cond_3

    .line 229
    iget-object v7, p0, Lorg/tekos/TextViewUndoRedo;->mEditHistory:Lorg/tekos/TextViewUndoRedo$EditHistory;

    new-instance v8, Lorg/tekos/TextViewUndoRedo$EditItem;

    invoke-direct {v8, p0, v6, v1, v0}, Lorg/tekos/TextViewUndoRedo$EditItem;-><init>(Lorg/tekos/TextViewUndoRedo;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-static {v7, v8}, Lorg/tekos/TextViewUndoRedo$EditHistory;->-wrap2(Lorg/tekos/TextViewUndoRedo$EditHistory;Lorg/tekos/TextViewUndoRedo$EditItem;)V

    .line 219
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 232
    .end local v0    # "after":Ljava/lang/String;
    .end local v1    # "before":Ljava/lang/String;
    .end local v5    # "pre":Ljava/lang/String;
    .end local v6    # "start":I
    :cond_5
    iget-object v7, p0, Lorg/tekos/TextViewUndoRedo;->mEditHistory:Lorg/tekos/TextViewUndoRedo$EditHistory;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".position"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v7, v8}, Lorg/tekos/TextViewUndoRedo$EditHistory;->-set1(Lorg/tekos/TextViewUndoRedo$EditHistory;I)I

    .line 233
    iget-object v7, p0, Lorg/tekos/TextViewUndoRedo;->mEditHistory:Lorg/tekos/TextViewUndoRedo$EditHistory;

    invoke-static {v7}, Lorg/tekos/TextViewUndoRedo$EditHistory;->-get2(Lorg/tekos/TextViewUndoRedo$EditHistory;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_6

    .line 234
    const/4 v7, 0x0

    return v7

    .line 237
    :cond_6
    const/4 v7, 0x1

    return v7
.end method


# virtual methods
.method public clearHistory()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/tekos/TextViewUndoRedo;->mEditHistory:Lorg/tekos/TextViewUndoRedo$EditHistory;

    invoke-static {v0}, Lorg/tekos/TextViewUndoRedo$EditHistory;->-wrap3(Lorg/tekos/TextViewUndoRedo$EditHistory;)V

    .line 84
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lorg/tekos/TextViewUndoRedo;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/tekos/TextViewUndoRedo;->mChangeListener:Lorg/tekos/TextViewUndoRedo$EditTextChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 69
    return-void
.end method

.method public getCanRedo()Z
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lorg/tekos/TextViewUndoRedo;->mEditHistory:Lorg/tekos/TextViewUndoRedo$EditHistory;

    invoke-static {v0}, Lorg/tekos/TextViewUndoRedo$EditHistory;->-get2(Lorg/tekos/TextViewUndoRedo$EditHistory;)I

    move-result v0

    iget-object v1, p0, Lorg/tekos/TextViewUndoRedo;->mEditHistory:Lorg/tekos/TextViewUndoRedo$EditHistory;

    invoke-static {v1}, Lorg/tekos/TextViewUndoRedo$EditHistory;->-get0(Lorg/tekos/TextViewUndoRedo$EditHistory;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCanUndo()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 92
    iget-object v1, p0, Lorg/tekos/TextViewUndoRedo;->mEditHistory:Lorg/tekos/TextViewUndoRedo$EditHistory;

    invoke-static {v1}, Lorg/tekos/TextViewUndoRedo$EditHistory;->-get2(Lorg/tekos/TextViewUndoRedo$EditHistory;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public redo()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 133
    iget-object v5, p0, Lorg/tekos/TextViewUndoRedo;->mEditHistory:Lorg/tekos/TextViewUndoRedo$EditHistory;

    invoke-static {v5}, Lorg/tekos/TextViewUndoRedo$EditHistory;->-wrap0(Lorg/tekos/TextViewUndoRedo$EditHistory;)Lorg/tekos/TextViewUndoRedo$EditItem;

    move-result-object v0

    .line 134
    .local v0, "edit":Lorg/tekos/TextViewUndoRedo$EditItem;
    if-nez v0, :cond_0

    .line 135
    return-void

    .line 138
    :cond_0
    iget-object v5, p0, Lorg/tekos/TextViewUndoRedo;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    .line 139
    .local v4, "text":Landroid/text/Editable;
    invoke-static {v0}, Lorg/tekos/TextViewUndoRedo$EditItem;->-get2(Lorg/tekos/TextViewUndoRedo$EditItem;)I

    move-result v3

    .line 140
    .local v3, "start":I
    invoke-static {v0}, Lorg/tekos/TextViewUndoRedo$EditItem;->-get1(Lorg/tekos/TextViewUndoRedo$EditItem;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {v0}, Lorg/tekos/TextViewUndoRedo$EditItem;->-get1(Lorg/tekos/TextViewUndoRedo$EditItem;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    :goto_0
    add-int v1, v3, v5

    .line 142
    .local v1, "end":I
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/tekos/TextViewUndoRedo;->mIsUndoOrRedo:Z

    .line 143
    invoke-static {v0}, Lorg/tekos/TextViewUndoRedo$EditItem;->-get0(Lorg/tekos/TextViewUndoRedo$EditItem;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v4, v3, v1, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 144
    iput-boolean v6, p0, Lorg/tekos/TextViewUndoRedo;->mIsUndoOrRedo:Z

    .line 148
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v5

    const-class v7, Landroid/text/style/UnderlineSpan;

    invoke-interface {v4, v6, v5, v7}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    array-length v7, v5

    :goto_1
    if-ge v6, v7, :cond_2

    aget-object v2, v5, v6

    .line 149
    .local v2, "o":Ljava/lang/Object;
    invoke-interface {v4, v2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 148
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v1    # "end":I
    .end local v2    # "o":Ljava/lang/Object;
    :cond_1
    move v5, v6

    .line 140
    goto :goto_0

    .line 152
    .restart local v1    # "end":I
    :cond_2
    invoke-static {v0}, Lorg/tekos/TextViewUndoRedo$EditItem;->-get0(Lorg/tekos/TextViewUndoRedo$EditItem;)Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_3

    .end local v3    # "start":I
    :goto_2
    invoke-static {v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 132
    return-void

    .line 153
    .restart local v3    # "start":I
    :cond_3
    invoke-static {v0}, Lorg/tekos/TextViewUndoRedo$EditItem;->-get0(Lorg/tekos/TextViewUndoRedo$EditItem;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_2
.end method

.method public restorePersistentState(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .locals 2
    .param p1, "sp"    # Landroid/content/SharedPreferences;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-direct {p0, p1, p2}, Lorg/tekos/TextViewUndoRedo;->doRestorePersistentState(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    .line 192
    .local v0, "ok":Z
    if-nez v0, :cond_0

    .line 193
    iget-object v1, p0, Lorg/tekos/TextViewUndoRedo;->mEditHistory:Lorg/tekos/TextViewUndoRedo$EditHistory;

    invoke-static {v1}, Lorg/tekos/TextViewUndoRedo$EditHistory;->-wrap3(Lorg/tekos/TextViewUndoRedo$EditHistory;)V

    .line 196
    :cond_0
    return v0
.end method

.method public setMaxHistorySize(I)V
    .locals 1
    .param p1, "maxHistorySize"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lorg/tekos/TextViewUndoRedo;->mEditHistory:Lorg/tekos/TextViewUndoRedo$EditHistory;

    invoke-static {v0, p1}, Lorg/tekos/TextViewUndoRedo$EditHistory;->-wrap4(Lorg/tekos/TextViewUndoRedo$EditHistory;I)V

    .line 77
    return-void
.end method

.method public storePersistentState(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 6
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".hash"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 163
    iget-object v5, p0, Lorg/tekos/TextViewUndoRedo;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 162
    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 164
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".maxSize"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/tekos/TextViewUndoRedo;->mEditHistory:Lorg/tekos/TextViewUndoRedo$EditHistory;

    invoke-static {v5}, Lorg/tekos/TextViewUndoRedo$EditHistory;->-get1(Lorg/tekos/TextViewUndoRedo$EditHistory;)I

    move-result v5

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".position"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/tekos/TextViewUndoRedo;->mEditHistory:Lorg/tekos/TextViewUndoRedo$EditHistory;

    invoke-static {v5}, Lorg/tekos/TextViewUndoRedo$EditHistory;->-get2(Lorg/tekos/TextViewUndoRedo$EditHistory;)I

    move-result v5

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".size"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/tekos/TextViewUndoRedo;->mEditHistory:Lorg/tekos/TextViewUndoRedo$EditHistory;

    invoke-static {v5}, Lorg/tekos/TextViewUndoRedo$EditHistory;->-get0(Lorg/tekos/TextViewUndoRedo$EditHistory;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 168
    const/4 v2, 0x0

    .line 169
    .local v2, "i":I
    iget-object v4, p0, Lorg/tekos/TextViewUndoRedo;->mEditHistory:Lorg/tekos/TextViewUndoRedo$EditHistory;

    invoke-static {v4}, Lorg/tekos/TextViewUndoRedo$EditHistory;->-get0(Lorg/tekos/TextViewUndoRedo$EditHistory;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ei$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/tekos/TextViewUndoRedo$EditItem;

    .line 170
    .local v0, "ei":Lorg/tekos/TextViewUndoRedo$EditItem;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "pre":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".start"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lorg/tekos/TextViewUndoRedo$EditItem;->-get2(Lorg/tekos/TextViewUndoRedo$EditItem;)I

    move-result v5

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".before"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lorg/tekos/TextViewUndoRedo$EditItem;->-get1(Lorg/tekos/TextViewUndoRedo$EditItem;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".after"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lorg/tekos/TextViewUndoRedo$EditItem;->-get0(Lorg/tekos/TextViewUndoRedo$EditItem;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    .end local v0    # "ei":Lorg/tekos/TextViewUndoRedo$EditItem;
    .end local v3    # "pre":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public undo()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 99
    iget-object v5, p0, Lorg/tekos/TextViewUndoRedo;->mEditHistory:Lorg/tekos/TextViewUndoRedo$EditHistory;

    invoke-static {v5}, Lorg/tekos/TextViewUndoRedo$EditHistory;->-wrap1(Lorg/tekos/TextViewUndoRedo$EditHistory;)Lorg/tekos/TextViewUndoRedo$EditItem;

    move-result-object v0

    .line 100
    .local v0, "edit":Lorg/tekos/TextViewUndoRedo$EditItem;
    if-nez v0, :cond_0

    .line 101
    return-void

    .line 104
    :cond_0
    iget-object v5, p0, Lorg/tekos/TextViewUndoRedo;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    .line 105
    .local v4, "text":Landroid/text/Editable;
    invoke-static {v0}, Lorg/tekos/TextViewUndoRedo$EditItem;->-get2(Lorg/tekos/TextViewUndoRedo$EditItem;)I

    move-result v3

    .line 106
    .local v3, "start":I
    invoke-static {v0}, Lorg/tekos/TextViewUndoRedo$EditItem;->-get0(Lorg/tekos/TextViewUndoRedo$EditItem;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {v0}, Lorg/tekos/TextViewUndoRedo$EditItem;->-get0(Lorg/tekos/TextViewUndoRedo$EditItem;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    :goto_0
    add-int v1, v3, v5

    .line 108
    .local v1, "end":I
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/tekos/TextViewUndoRedo;->mIsUndoOrRedo:Z

    .line 109
    invoke-static {v0}, Lorg/tekos/TextViewUndoRedo$EditItem;->-get1(Lorg/tekos/TextViewUndoRedo$EditItem;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v4, v3, v1, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 110
    iput-boolean v6, p0, Lorg/tekos/TextViewUndoRedo;->mIsUndoOrRedo:Z

    .line 114
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v5

    const-class v7, Landroid/text/style/UnderlineSpan;

    invoke-interface {v4, v6, v5, v7}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    array-length v7, v5

    :goto_1
    if-ge v6, v7, :cond_2

    aget-object v2, v5, v6

    .line 115
    .local v2, "o":Ljava/lang/Object;
    invoke-interface {v4, v2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 114
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v1    # "end":I
    .end local v2    # "o":Ljava/lang/Object;
    :cond_1
    move v5, v6

    .line 106
    goto :goto_0

    .line 118
    .restart local v1    # "end":I
    :cond_2
    invoke-static {v0}, Lorg/tekos/TextViewUndoRedo$EditItem;->-get1(Lorg/tekos/TextViewUndoRedo$EditItem;)Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_3

    .end local v3    # "start":I
    :goto_2
    invoke-static {v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 98
    return-void

    .line 119
    .restart local v3    # "start":I
    :cond_3
    invoke-static {v0}, Lorg/tekos/TextViewUndoRedo$EditItem;->-get1(Lorg/tekos/TextViewUndoRedo$EditItem;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_2
.end method
