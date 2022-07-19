.class final Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$1;
.super Ljava/lang/Object;
.source "AlipayLogUploader.java"

# interfaces
.implements Lcom/alipay/mobile/monitor/util/ZipUtils$ZipFileHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;

    .line 186
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$1;->b:Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;

    iput-object p2, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleFileNameInZip(Ljava/io/File;)Ljava/lang/String;
    .locals 10
    .param p1, "fileInZip"    # Ljava/io/File;

    .line 189
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 190
    return-object v0

    .line 192
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "originName":Ljava/lang/String;
    move-object v2, v0

    .line 196
    .local v2, "fileName":Ljava/lang/String;
    move-object v2, v1

    :try_start_0
    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object v4, v0

    .line 197
    .local v4, "prefix":Ljava/lang/String;
    move-object v4, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 198
    .local v5, "fileTime":J
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 199
    .local v3, "date":Ljava/util/Date;
    iget-object v7, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$1;->b:Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;

    invoke-static {v7}, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->a(Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;)Ljava/text/SimpleDateFormat;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 200
    .local v7, "target":Ljava/lang/String;
    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 202
    iget-object v8, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$1;->a:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 203
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    .line 204
    .local v0, "parent":Ljava/io/File;
    move-object v0, v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$1;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 205
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_bak"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v8

    .line 209
    .end local v0    # "parent":Ljava/io/File;
    :cond_1
    return-object v2

    .line 210
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "date":Ljava/util/Date;
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v5    # "fileTime":J
    .end local v7    # "target":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 211
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " handleFileNameInZip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    return-object v1
.end method
