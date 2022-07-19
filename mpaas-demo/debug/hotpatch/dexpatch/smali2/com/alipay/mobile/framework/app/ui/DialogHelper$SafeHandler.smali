.class Lcom/alipay/mobile/framework/app/ui/DialogHelper$SafeHandler;
.super Landroid/os/Handler;
.source "DialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/framework/app/ui/DialogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SafeHandler"
.end annotation


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "oriHandler"    # Landroid/os/Handler;

    .line 272
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 273
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$SafeHandler;->a:Landroid/os/Handler;

    .line 274
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Handler;Lcom/alipay/mobile/framework/app/ui/DialogHelper$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;
    .param p2, "x1"    # Lcom/alipay/mobile/framework/app/ui/DialogHelper$1;

    .line 268
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/app/ui/DialogHelper$SafeHandler;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$SafeHandler;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    const-string v1, "DialogHelper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 283
    const/4 v2, 0x0

    .line 285
    .local v2, "safe":Z
    :try_start_1
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 286
    .local v4, "errorInfo":Ljava/lang/String;
    move-object v4, v3

    const-string v5, "Unable to add window -- token"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "is not valid; is your activity running?"

    .line 287
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "android.widget.Toast$TN.handleShow"

    .line 288
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "android.view.WindowManagerImpl.addView"

    .line 289
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 290
    const/4 v1, 0x1

    move v2, v1

    .line 294
    .end local v4    # "errorInfo":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 292
    :catchall_0
    move-exception v3

    .line 293
    .local v3, "tr":Ljava/lang/Throwable;
    invoke-static {v1, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 295
    .end local v3    # "tr":Ljava/lang/Throwable;
    :goto_0
    if-eqz v2, :cond_1

    .line 299
    .end local v0    # "e":Landroid/view/WindowManager$BadTokenException;
    .end local v2    # "safe":Z
    return-void

    .line 296
    .restart local v0    # "e":Landroid/view/WindowManager$BadTokenException;
    .restart local v2    # "safe":Z
    :cond_1
    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$SafeHandler;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    const-string v1, "DialogHelper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 308
    const/4 v2, 0x0

    .line 310
    .local v2, "safe":Z
    :try_start_1
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 311
    .local v4, "errorInfo":Ljava/lang/String;
    move-object v4, v3

    const-string v5, "Unable to add window -- token"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "is not valid; is your activity running?"

    .line 312
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "android.widget.Toast$TN.handleShow"

    .line 313
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "android.view.WindowManagerImpl.addView"

    .line 314
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 315
    const/4 v1, 0x1

    move v2, v1

    .line 319
    .end local v4    # "errorInfo":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 317
    :catchall_0
    move-exception v3

    .line 318
    .local v3, "tr":Ljava/lang/Throwable;
    invoke-static {v1, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 320
    .end local v3    # "tr":Ljava/lang/Throwable;
    :goto_0
    if-eqz v2, :cond_1

    .line 324
    .end local v0    # "e":Landroid/view/WindowManager$BadTokenException;
    .end local v2    # "safe":Z
    return-void

    .line 321
    .restart local v0    # "e":Landroid/view/WindowManager$BadTokenException;
    .restart local v2    # "safe":Z
    :cond_1
    throw v0
.end method
