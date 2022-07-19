.class Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$2;
.super Ljava/lang/Object;
.source "H5NumInputKeyboardM57.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->showCustomKeyboardCallback(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;

.field final synthetic val$showCustom:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;

    .line 482
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$2;->this$0:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;

    iput-boolean p2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$2;->val$showCustom:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 486
    const-string v0, "H5NumInputKeyboardM57"

    const-string v1, " "

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 487
    .local v2, "params":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$2;->this$0:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;

    # invokes: Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->getKeyboardScreenRect()Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->access$200(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;)Landroid/graphics/Rect;

    move-result-object v3

    .line 488
    .local v3, "scrRc":Landroid/graphics/Rect;
    const-string v4, "keyboard-screen-rect-left"

    iget v5, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 489
    const-string v4, "keyboard-screen-rect-top"

    iget v5, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 490
    const-string v4, "keyboard-screen-rect-right"

    iget v5, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 491
    const-string v4, "keyboard-screen-rect-bottom"

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 492
    const-string v4, "CustomKeyBoard"

    iget-boolean v5, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$2;->val$showCustom:Z

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 493
    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$2;->this$0:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;

    # getter for: Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mKeyboardCallback:Landroid/webkit/ValueCallback;
    invoke-static {v4}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->access$300(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;)Landroid/webkit/ValueCallback;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 494
    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$2;->this$0:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;

    # getter for: Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mKeyboardCallback:Landroid/webkit/ValueCallback;
    invoke-static {v4}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->access$300(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;)Landroid/webkit/ValueCallback;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 496
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rect ltrb = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", CustomKeyBoard: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$2;->val$showCustom:Z

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    .end local v2    # "params":Lorg/json/JSONObject;
    .end local v3    # "scrRc":Landroid/graphics/Rect;
    goto :goto_1

    .line 499
    :catch_0
    move-exception v1

    .line 500
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "onReceiveValue exception"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 502
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
