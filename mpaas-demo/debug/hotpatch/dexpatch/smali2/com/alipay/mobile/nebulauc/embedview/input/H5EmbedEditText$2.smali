.class Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;
.super Ljava/lang/Object;
.source "H5EmbedEditText.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->renderEditText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

.field final synthetic val$contentLength:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    .line 281
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    iput p2, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->val$contentLength:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 284
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->access$100(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 285
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->access$100(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 286
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->access$100(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mTextColor:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->access$200(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setTextColor(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->access$100(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;
    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->access$100(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mTextValue:Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->access$300(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 289
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->access$100(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mTextSize:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->access$400(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setTextSize(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mFontFamily:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->access$500(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlipayNumber"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AlipayFontProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AlipayFontProvider;

    .line 292
    .local v0, "fontProvider":Lcom/alipay/mobile/nebula/provider/H5AlipayFontProvider;
    if-eqz v0, :cond_0

    .line 293
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5AlipayFontProvider;->getAlipayNumberTtfPath()Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "fontPath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 296
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->access$600(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 297
    .local v2, "typeface":Landroid/graphics/Typeface;
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;
    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->access$100(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    .end local v2    # "typeface":Landroid/graphics/Typeface;
    goto :goto_0

    .line 298
    :catchall_0
    move-exception v2

    .line 299
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "H5EmbedEditText"

    const-string v4, "setTypeface : "

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 304
    .end local v0    # "fontProvider":Lcom/alipay/mobile/nebula/provider/H5AlipayFontProvider;
    .end local v1    # "fontPath":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->access$100(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mTextHint:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->access$700(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->access$100(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mHintColor:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->access$800(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setHintTextColor(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->access$100(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mReturnType:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->access$900(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setImeOption(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->access$100(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mMaxLength:I
    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->access$1000(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setMaxLength(I)V

    .line 308
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->access$100(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mTextAlign:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->access$1100(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setTextAlign(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->access$100(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setBackgroundColor(I)V

    .line 310
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mIsEditing:Z
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->access$1200(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 311
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mSelectStart:I
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->access$1300(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mSelectEnd:I
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->access$1400(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_1

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->access$100(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->val$contentLength:I

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mCursor:I
    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->access$1500(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setCursor(II)V

    goto :goto_2

    .line 312
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->access$100(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->val$contentLength:I

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mSelectStart:I
    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->access$1300(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)I

    move-result v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mSelectEnd:I
    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->access$1400(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setSelection(III)V

    .line 316
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    const/4 v1, 0x1

    # setter for: Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mIsEditing:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->access$1202(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;Z)Z

    .line 318
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mDisabled:Z
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->access$1600(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 319
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->access$100(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    # getter for: Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->access$100(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 323
    :cond_5
    return-void
.end method
