.class final Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode$2;
.super Ljava/lang/Object;
.source "H5TinyAppDebugMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode;->showFailToast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 122
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 123
    .local v1, "context":Landroid/content/Context;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 124
    const-string/jumbo v0, "\u62b1\u6b49\uff0c\u60a8\u672a\u83b7\u5f97\u6b64\u5e94\u7528\u7684\u4f7f\u7528\u6743\u9650"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    return-void

    .line 126
    :catchall_0
    move-exception v0

    .line 127
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "H5TinyAppDebugMode"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method
