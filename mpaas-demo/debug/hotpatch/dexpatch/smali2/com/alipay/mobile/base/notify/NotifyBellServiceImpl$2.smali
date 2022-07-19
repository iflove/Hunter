.class Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl$2;
.super Ljava/lang/Object;
.source "NotifyBellServiceImpl.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->playSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;

    .line 134
    iput-object p1, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl$2;->this$0:Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .line 137
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "NotifyBellServiceImpl"

    const-string/jumbo v2, "onError"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 139
    const/4 v0, 0x0

    return v0
.end method
