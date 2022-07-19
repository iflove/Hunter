.class public Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;
.super Ljava/lang/Object;
.source "TraceDebugBean.java"


# static fields
.field private static final b:Ljava/lang/Object;

.field private static c:Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;

.field private static d:I


# instance fields
.field a:I

.field public detail:Ljava/lang/String;

.field private e:Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;

.field public endTime:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public startTime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->b:Ljava/lang/Object;

    .line 15
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "SCALE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_1
    const-string v0, "NET"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v0, "FPS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "DOM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_4
    const-string v0, "CPU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_5
    const-string v0, "STARTUP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_6
    const-string v0, "SCRIPT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_7
    const-string v0, "MEMORY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 81
    const-string v0, ""

    return-object v0

    .line 79
    :pswitch_0
    const-string v0, "I"

    return-object v0

    .line 77
    :pswitch_1
    const-string v0, "D"

    return-object v0

    .line 75
    :pswitch_2
    const-string v0, "J"

    return-object v0

    .line 73
    :pswitch_3
    const-string v0, "N"

    return-object v0

    .line 71
    :pswitch_4
    const-string v0, "P"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x78aa4eff -> :sswitch_7
        -0x6e873b35 -> :sswitch_6
        -0x464931a3 -> :sswitch_5
        0x10588 -> :sswitch_4
        0x10922 -> :sswitch_3
        0x110c9 -> :sswitch_2
        0x12d7d -> :sswitch_1
        0x4b1112a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static obtain()Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;
    .locals 4

    .line 27
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->c:Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;

    if-eqz v1, :cond_0

    .line 29
    const/4 v2, 0x0

    move-object v3, v2

    .line 30
    .local v3, "m":Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;
    move-object v3, v1

    iget-object v1, v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->e:Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;

    sput-object v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->c:Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;

    .line 31
    iput-object v2, v3, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->e:Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;

    .line 32
    const/4 v1, 0x0

    iput v1, v3, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->a:I

    .line 33
    sget v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->d:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->d:I

    .line 34
    monitor-exit v0

    return-object v3

    .line 36
    .end local v3    # "m":Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;-><init>()V

    return-object v0

    .line 36
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static toURLEncoded(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "paramString"    # Ljava/lang/String;

    .line 86
    const-string v0, ""

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 91
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    return-object v0

    .line 94
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;)V

    .line 96
    return-object v0

    .line 87
    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public covertToString()Ljava/lang/String;
    .locals 3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->startTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->endTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->detail:Ljava/lang/String;

    .line 62
    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->toURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    return-object v0
.end method

.method public recycle()V
    .locals 4

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->a:I

    .line 42
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 43
    :try_start_0
    sget v2, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->d:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 44
    sget-object v3, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->c:Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;

    iput-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->e:Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;

    .line 45
    sput-object p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->c:Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;

    .line 46
    add-int/2addr v2, v0

    sput v2, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->d:I

    .line 48
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
