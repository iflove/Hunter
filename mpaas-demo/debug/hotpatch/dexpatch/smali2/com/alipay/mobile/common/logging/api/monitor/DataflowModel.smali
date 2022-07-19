.class public Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;
.super Ljava/lang/Object;
.source "DataflowModel.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Z

.field public appId:Ljava/lang/String;

.field private b:I

.field public bizId:Ljava/lang/String;

.field public bundle:Ljava/lang/String;

.field public diagnose:Ljava/lang/String;

.field public extParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public fileId:Ljava/lang/String;

.field public host:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public isUpload:Z

.field public params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public reqHeaders:[Lorg/apache/http/Header;

.field public reqSize:J

.field public respHeaders:[Lorg/apache/http/Header;

.field public respSize:J

.field public type:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public url:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->b:I

    .line 122
    return-void
.end method

.method private static a()Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;
    .locals 1

    .line 117
    new-instance v0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;-><init>()V

    .line 118
    return-object v0
.end method

.method public static obtain(Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;Ljava/lang/String;JJLjava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;
    .locals 2
    .param p0, "type"    # Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "reqSize"    # J
    .param p4, "respSize"    # J
    .param p6, "diagnose"    # Ljava/lang/String;

    .line 102
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->a()Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    move-result-object v0

    const/4 v1, 0x0

    .line 103
    .local v1, "dataflowModel":Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;
    move-object v1, v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->recycle()V

    .line 105
    iput-object p0, v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->type:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 106
    iput-object p1, v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->url:Ljava/lang/String;

    .line 107
    iput-wide p2, v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->reqSize:J

    .line 108
    iput-wide p4, v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->respSize:J

    .line 109
    iput-object p6, v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->diagnose:Ljava/lang/String;

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->a:Z

    .line 112
    return-object v1
.end method

.method public static obtain(Ljava/lang/String;JJLcom/alipay/mobile/common/logging/api/monitor/DataflowID;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "reqSize"    # J
    .param p3, "respSize"    # J
    .param p5, "type"    # Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;
    .param p6, "bundle"    # Ljava/lang/String;
    .param p7, "diagnose"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 89
    move-object v0, p5

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p7

    invoke-static/range {v0 .. v6}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->obtain(Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;Ljava/lang/String;JJLjava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cloneMirror()Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;
    .locals 7

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->type:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->url:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->reqSize:J

    iget-wide v4, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->respSize:J

    iget-object v6, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->diagnose:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->obtain(Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;Ljava/lang/String;JJLjava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 127
    .local v2, "mirror":Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;
    move-object v2, v0

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->bundle:Ljava/lang/String;

    iput-object v3, v0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->bundle:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->appId:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->appId:Ljava/lang/String;

    .line 129
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->isUpload:Z

    iput-boolean v0, v2, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->isUpload:Z

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->fileId:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->fileId:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->bizId:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->bizId:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->reqHeaders:[Lorg/apache/http/Header;

    iput-object v0, v2, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->reqHeaders:[Lorg/apache/http/Header;

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->respHeaders:[Lorg/apache/http/Header;

    iput-object v0, v2, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->respHeaders:[Lorg/apache/http/Header;

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->extParams:Ljava/util/Map;

    iput-object v0, v2, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->extParams:Ljava/util/Map;

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->host:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->host:Ljava/lang/String;

    .line 136
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->a:Z

    iput-boolean v0, v2, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->a:Z

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->params:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v2, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->params:Ljava/util/Map;

    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->params:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 142
    .local v1, "entry":Ljava/util/Map$Entry;
    move-object v1, v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 143
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 144
    .local v4, "val":Ljava/lang/String;
    iget-object v5, v2, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->params:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "val":Ljava/lang/String;
    goto :goto_0

    .line 147
    :cond_0
    return-object v2
.end method

.method public getLoggerLevel()I
    .locals 1

    .line 201
    iget v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->b:I

    return v0
.end method

.method public getParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->params:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 180
    const/4 v0, 0x0

    return-object v0

    .line 182
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isInUse()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->a:Z

    return v0
.end method

.method public putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->params:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->params:Ljava/util/Map;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->params:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    return-object p0
.end method

.method public recycle()V
    .locals 4

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->a:Z

    .line 153
    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->UNKNOWN:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->type:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 154
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->url:Ljava/lang/String;

    .line 155
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->reqSize:J

    .line 156
    iput-wide v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->respSize:J

    .line 157
    iput-object v1, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->bundle:Ljava/lang/String;

    .line 158
    iput-object v1, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->appId:Ljava/lang/String;

    .line 159
    iput-object v1, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->diagnose:Ljava/lang/String;

    .line 160
    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->isUpload:Z

    .line 161
    iput-object v1, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->fileId:Ljava/lang/String;

    .line 162
    iput-object v1, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->bizId:Ljava/lang/String;

    .line 163
    iput-object v1, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->reqHeaders:[Lorg/apache/http/Header;

    .line 164
    iput-object v1, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->respHeaders:[Lorg/apache/http/Header;

    .line 165
    iput-object v1, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->params:Ljava/util/Map;

    .line 166
    iput-object v1, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->extParams:Ljava/util/Map;

    .line 167
    iput-object v1, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->host:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public removeParam(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->params:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 195
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_0
    return-object p0
.end method

.method public report()V
    .locals 1

    .line 175
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->dataflow(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)V

    .line 176
    return-void
.end method

.method public setLoggerLevel(I)V
    .locals 0
    .param p1, "loggerLevel"    # I

    .line 205
    iput p1, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->b:I

    .line 206
    return-void
.end method
