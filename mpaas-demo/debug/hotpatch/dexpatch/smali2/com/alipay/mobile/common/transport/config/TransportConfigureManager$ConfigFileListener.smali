.class Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener;
.super Landroid/os/FileObserver;
.source "TransportConfigureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConfigFileListener"
.end annotation


# static fields
.field static STATE_BUSY:B

.field static STATE_IDLE:B


# instance fields
.field private a:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 283
    const/4 v0, 0x1

    sput-byte v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener;->STATE_IDLE:B

    .line 285
    const/4 v0, 0x2

    sput-byte v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener;->STATE_BUSY:B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 294
    invoke-direct {p0, p1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    .line 287
    sget-byte v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener;->STATE_IDLE:B

    iput-byte v0, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener;->a:B

    .line 295
    return-void
.end method

.method static synthetic access$002(Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener;B)B
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener;
    .param p1, "x1"    # B

    .line 281
    iput-byte p1, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener;->a:B

    return p1
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 299
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 300
    const-string/jumbo v0, "sdkSharedSwitch.xml"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 301
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 302
    return-void

    .line 304
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConfigFileListener. path=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]  event=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Conf_TransportConfigureManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-byte v0, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener;->a:B

    sget-byte v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener;->STATE_BUSY:B

    if-ne v0, v2, :cond_1

    .line 307
    const-string v0, "ConfigFileListener. state is STATE_BUSY, return."

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    return-void

    .line 310
    :cond_1
    iput-byte v2, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener;->a:B

    .line 313
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener$1;-><init>(Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener;)V

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->executeSerial(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    return-void

    .line 327
    :catchall_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "ConfigFileListener. executeSerial exception."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 329
    sget-byte v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener;->STATE_IDLE:B

    iput-byte v1, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener;->a:B

    .line 332
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    return-void
.end method
