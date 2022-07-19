.class final Lcom/alipay/mobile/antui/input/AUInputBox$1;
.super Ljava/lang/Object;
.source "AUInputBox.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/input/AUInputBox;->afterInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/input/AUInputBox;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/input/AUInputBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/input/AUInputBox;

    .line 168
    iput-object p1, p0, Lcom/alipay/mobile/antui/input/AUInputBox$1;->a:Lcom/alipay/mobile/antui/input/AUInputBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 13
    .param p1, "inputedStr"    # Landroid/text/Editable;

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox$1;->a:Lcom/alipay/mobile/antui/input/AUInputBox;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/alipay/mobile/antui/input/AUInputBox$1;->a:Lcom/alipay/mobile/antui/input/AUInputBox;

    # getter for: Lcom/alipay/mobile/antui/input/AUInputBox;->mInputEditText:Lcom/alipay/mobile/antui/basic/AUEditText;
    invoke-static {v4}, Lcom/alipay/mobile/antui/input/AUInputBox;->access$000(Lcom/alipay/mobile/antui/input/AUInputBox;)Lcom/alipay/mobile/antui/basic/AUEditText;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/antui/basic/AUEditText;->hasFocus()Z

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/alipay/mobile/antui/input/AUInputBox;->onInputTextStatusChanged(ZZ)V

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox$1;->a:Lcom/alipay/mobile/antui/input/AUInputBox;

    # getter for: Lcom/alipay/mobile/antui/input/AUInputBox;->mTextFormatter:Lcom/alipay/mobile/antui/input/AUFormatter;
    invoke-static {v0}, Lcom/alipay/mobile/antui/input/AUInputBox;->access$100(Lcom/alipay/mobile/antui/input/AUInputBox;)Lcom/alipay/mobile/antui/input/AUFormatter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 183
    invoke-interface {p1}, Landroid/text/Editable;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    const/4 v1, 0x0

    move-object v4, v1

    .line 188
    .local v4, "filters":[Landroid/text/InputFilter;
    move-object v4, v0

    if-eqz v0, :cond_3

    array-length v0, v4

    if-lez v0, :cond_3

    .line 189
    array-length v0, v4

    move-object v5, v1

    move-object v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_3

    aget-object v8, v4, v7

    .line 190
    .local v1, "each":Landroid/text/InputFilter;
    move-object v1, v8

    instance-of v8, v8, Landroid/text/InputFilter$LengthFilter;

    if-eqz v8, :cond_2

    .line 193
    :try_start_0
    iget-object v8, p0, Lcom/alipay/mobile/antui/input/AUInputBox$1;->a:Lcom/alipay/mobile/antui/input/AUInputBox;

    .line 194
    # getter for: Lcom/alipay/mobile/antui/input/AUInputBox;->mTextFormatter:Lcom/alipay/mobile/antui/input/AUFormatter;
    invoke-static {v8}, Lcom/alipay/mobile/antui/input/AUInputBox;->access$100(Lcom/alipay/mobile/antui/input/AUInputBox;)Lcom/alipay/mobile/antui/input/AUFormatter;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    .line 195
    array-length v9, v8

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_2

    aget-object v11, v8, v10

    .line 196
    .local v5, "fech":Ljava/lang/reflect/Field;
    move-object v5, v11

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    .line 197
    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "InputFilter"

    .line 198
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 199
    nop

    .line 200
    .local v6, "f":Ljava/lang/reflect/Field;
    move-object v6, v5

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 201
    iget-object v8, p0, Lcom/alipay/mobile/antui/input/AUInputBox$1;->a:Lcom/alipay/mobile/antui/input/AUInputBox;

    # getter for: Lcom/alipay/mobile/antui/input/AUInputBox;->mTextFormatter:Lcom/alipay/mobile/antui/input/AUFormatter;
    invoke-static {v8}, Lcom/alipay/mobile/antui/input/AUInputBox;->access$100(Lcom/alipay/mobile/antui/input/AUInputBox;)Lcom/alipay/mobile/antui/input/AUFormatter;

    move-result-object v8

    new-array v9, v2, [Landroid/text/InputFilter;

    aput-object v1, v9, v3

    invoke-virtual {v6, v8, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    goto :goto_3

    .line 195
    .end local v5    # "fech":Ljava/lang/reflect/Field;
    .end local v6    # "f":Ljava/lang/reflect/Field;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 205
    :catch_0
    move-exception v8

    nop

    .line 189
    .end local v1    # "each":Landroid/text/InputFilter;
    :cond_2
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 210
    :cond_3
    new-array v0, v3, [Landroid/text/InputFilter;

    invoke-interface {p1, v0}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox$1;->a:Lcom/alipay/mobile/antui/input/AUInputBox;

    # getter for: Lcom/alipay/mobile/antui/input/AUInputBox;->mTextFormatter:Lcom/alipay/mobile/antui/input/AUFormatter;
    invoke-static {v0}, Lcom/alipay/mobile/antui/input/AUInputBox;->access$100(Lcom/alipay/mobile/antui/input/AUInputBox;)Lcom/alipay/mobile/antui/input/AUFormatter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/antui/input/AUFormatter;->format(Landroid/text/Editable;)V

    .line 212
    invoke-interface {p1, v4}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 214
    .end local v4    # "filters":[Landroid/text/InputFilter;
    :cond_4
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 171
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 175
    return-void
.end method
