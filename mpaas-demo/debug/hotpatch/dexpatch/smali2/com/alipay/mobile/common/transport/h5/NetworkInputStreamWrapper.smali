.class public Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;
.super Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;
.source "NetworkInputStreamWrapper.java"


# instance fields
.field private a:Z

.field private b:Lcom/alipay/mobile/common/transport/http/HttpManager;

.field private c:J

.field private d:Lcom/alipay/mobile/common/transport/http/HttpWorker;

.field private e:Ljava/lang/Throwable;

.field protected mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/alipay/mobile/common/transport/context/TransportContext;Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/transport/http/HttpWorker;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "transportContext"    # Lcom/alipay/mobile/common/transport/context/TransportContext;
    .param p3, "httpManager"    # Lcom/alipay/mobile/common/transport/http/HttpManager;
    .param p4, "httpWorker"    # Lcom/alipay/mobile/common/transport/http/HttpWorker;

    .line 43
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->a:Z

    .line 34
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->c:J

    .line 44
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    .line 45
    iput-object p3, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->b:Lcom/alipay/mobile/common/transport/http/HttpManager;

    .line 46
    iput-object p4, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->d:Lcom/alipay/mobile/common/transport/http/HttpWorker;

    .line 47
    return-void
.end method

.method private a()V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->taskFinishedTimeMillis:J

    .line 120
    new-instance v0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper$1;-><init>(Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;)V

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->executeHighSerial(Ljava/lang/Runnable;)V

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;

    .line 26
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->b()V

    return-void
.end method

.method private b()V
    .locals 13

    const-string/jumbo v0, "noteTraficConsume"

    .line 129
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->e:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 130
    const-string v2, "NetworkInputStreamWrapper"

    const-string v3, "Read fail, exception: "

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->e:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ERROR"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->d:Lcom/alipay/mobile/common/transport/http/HttpWorker;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    const-string v2, "CANCEL"

    const-string v3, "T"

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->getReaded()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "RES_SIZE"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->d:Lcom/alipay/mobile/common/transport/http/HttpWorker;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->doMonitorLog()Ljava/lang/String;

    .line 144
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->HTTPCLIENT_H5:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 145
    .local v1, "type":Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-byte v2, v2, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizType:B

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 146
    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->HTTPCLIENT_DJANGO:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    move-object v1, v2

    .line 148
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-byte v2, v2, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizType:B

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 149
    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->HTTPCLIENT_MDAP:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    move-object v1, v2

    .line 152
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-object v3, v2, Lcom/alipay/mobile/common/transport/context/TransportContext;->url:Ljava/lang/String;

    .line 153
    .local v3, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v2

    const-string v4, "REQ_SIZE"

    invoke-interface {v2, v4}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    move-object v4, v9

    .line 154
    .local v4, "reqLength":Ljava/lang/String;
    move-object v10, v2

    .end local v4    # "reqLength":Ljava/lang/String;
    .local v10, "reqLength":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_0

    :cond_4
    const-wide/16 v4, 0x0

    .line 155
    .local v4, "reqSize":J
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->getReaded()I

    move-result v2

    int-to-long v11, v2

    .line 157
    .local v11, "respSize":J
    const/4 v8, 0x0

    move-object v2, v1

    move-wide v6, v11

    invoke-static/range {v2 .. v8}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->obtain(Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;Ljava/lang/String;JJLjava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    move-result-object v2

    move-object v6, v9

    .line 158
    .local v6, "dataflowModel":Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;
    move-object v6, v2

    const/4 v7, 0x0

    iput-boolean v7, v2, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->isUpload:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 161
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->d:Lcom/alipay/mobile/common/transport/http/HttpWorker;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v2

    const-string v7, "bizId"

    invoke-virtual {v2, v7}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->bizId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    goto :goto_1

    .line 162
    :catchall_0
    move-exception v2

    move-object v9, v2

    .line 163
    .local v9, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "NetworkISW.bizId: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v0, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 166
    .end local v9    # "t":Ljava/lang/Throwable;
    :goto_1
    :try_start_3
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->d:Lcom/alipay/mobile/common/transport/http/HttpWorker;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    iput-object v2, v6, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->reqHeaders:[Lorg/apache/http/Header;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 169
    goto :goto_2

    .line 167
    :catchall_1
    move-exception v2

    move-object v9, v2

    .line 168
    .restart local v9    # "t":Ljava/lang/Throwable;
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "NetworkISW.reqHeaders: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v0, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 171
    .end local v9    # "t":Ljava/lang/Throwable;
    :goto_2
    :try_start_5
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->d:Lcom/alipay/mobile/common/transport/http/HttpWorker;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    iput-object v2, v6, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->respHeaders:[Lorg/apache/http/Header;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 174
    goto :goto_3

    .line 172
    :catchall_2
    move-exception v2

    move-object v9, v2

    .line 173
    .restart local v9    # "t":Ljava/lang/Throwable;
    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "NetworkISW.respHeaders: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v0, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .end local v9    # "t":Ljava/lang/Throwable;
    :goto_3
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->d:Lcom/alipay/mobile/common/transport/http/HttpWorker;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v2

    move-object v7, v9

    .line 178
    .local v7, "originRequest":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    move-object v7, v2

    if-eqz v2, :cond_5

    instance-of v2, v7, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;

    if-eqz v2, :cond_5

    .line 180
    move-object v2, v7

    check-cast v2, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;

    .line 181
    .local v2, "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->isPrintUrlToMonitorLog()Z

    move-result v8

    invoke-static {v6, v8}, Lcom/alipay/mobile/common/transport/utils/MonitorLogRecordUtil;->recordCtrlPrintURLFlagToDataflow(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;Z)V

    .line 183
    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->getRefer()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 184
    const-string v8, "h5_refer"

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->getRefer()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 189
    .end local v2    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getMonitorContext()Lcom/alipay/mobile/monitor/api/MonitorContext;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/alipay/mobile/monitor/api/MonitorContext;->noteTraficConsume(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 192
    .end local v1    # "type":Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "reqSize":J
    .end local v6    # "dataflowModel":Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;
    .end local v7    # "originRequest":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    .end local v10    # "reqLength":Ljava/lang/String;
    .end local v11    # "respSize":J
    goto :goto_4

    .line 190
    :catchall_3
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "NetworkISW.outer"

    invoke-interface {v2, v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_4
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string v2, "READ_TIME"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v1, "dataItem":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 197
    :try_start_7
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->b:Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/common/transport/http/HttpManager;->addSocketTime(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 200
    return-void

    .line 198
    :catchall_4
    move-exception v0

    .line 202
    :cond_6
    return-void
.end method

.method private c()Z
    .locals 4

    .line 206
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->d:Lcom/alipay/mobile/common/transport/http/HttpWorker;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v1

    const/4 v2, 0x0

    .line 207
    .local v2, "originRequest":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    move-object v2, v1

    if-eqz v1, :cond_0

    instance-of v1, v2, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;

    if-eqz v1, :cond_0

    .line 208
    move-object v1, v2

    check-cast v1, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;

    .line 209
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->isAsyncMonitorLog()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 211
    :cond_0
    return v0

    .line 212
    .end local v2    # "originRequest":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    :catchall_0
    move-exception v1

    .line 213
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "NetworkInputStreamWrapper"

    const-string v3, "isAsyncMonitorLog error. "

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    .end local v1    # "e":Ljava/lang/Throwable;
    return v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 83
    const-string v0, "NetworkInputStreamWrapper"

    const-string v1, "H5InputStream invoke close."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->a:Z

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->monitorLog()V

    .line 88
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;->close()V

    .line 89
    return-void
.end method

.method protected monitorLog()V
    .locals 11

    .line 92
    const-string v0, "cost:"

    const-string v1, "NetworkInputStreamWrapper"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 94
    .local v2, "startTime":J
    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->a:Z

    .line 96
    iget-object v4, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v4

    const-string v5, "ALL_TIME"

    invoke-interface {v4, v5}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemRelease(Ljava/lang/String;)V

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->c:J

    sub-long/2addr v4, v6

    .line 101
    .local v4, "readTiming":J
    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-nez v10, :cond_0

    .line 102
    const-wide/16 v4, 0x0

    .line 104
    :cond_0
    iget-object v6, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v6}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v6

    const-string v7, "READ_TIME"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->c()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 107
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->a()V

    goto :goto_0

    .line 109
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .end local v4    # "readTiming":J
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void

    .line 114
    :catchall_0
    move-exception v4

    goto :goto_2

    .line 111
    :catch_0
    move-exception v4

    .line 112
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v1, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    .end local v4    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    throw v4
.end method

.method public declared-synchronized read([BII)I
    .locals 7
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    monitor-enter p0

    .line 51
    :try_start_0
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->c:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 55
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;
    :cond_0
    const/4 v0, -0x1

    .line 57
    .local v0, "size":I
    const/4 v1, -0x1

    const/4 v2, 0x5

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 58
    .local v3, "everyStartReadTime":J
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;->read([BII)I

    move-result v5

    move v0, v5

    .line 59
    invoke-static {}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->getInstance()Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;

    move-result-object v5

    invoke-virtual {v5, v3, v4, v2}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->estimateByStartTime(JB)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    if-eq v0, v1, :cond_1

    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->e:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->a:Z

    if-nez v1, :cond_2

    .line 76
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->monitorLog()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 60
    :cond_2
    monitor-exit p0

    return v0

    .line 68
    .end local v3    # "everyStartReadTime":J
    :catchall_0
    move-exception v2

    .line 69
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_3
    iput-object v2, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->e:Ljava/lang/Throwable;

    .line 70
    new-instance v3, Ljava/io/InterruptedIOException;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 71
    .local v4, "ioException":Ljava/io/InterruptedIOException;
    move-object v4, v3

    invoke-virtual {v3, v2}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 72
    nop

    .end local v0    # "size":I
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .end local p3    # "byteCount":I
    throw v4

    .line 61
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v4    # "ioException":Ljava/io/InterruptedIOException;
    .restart local v0    # "size":I
    .restart local p1    # "buffer":[B
    .restart local p2    # "offset":I
    .restart local p3    # "byteCount":I
    :catch_0
    move-exception v3

    .line 62
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "NetworkInputStreamWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "read ex:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    instance-of v4, v3, Ljava/net/SocketTimeoutException;

    if-eqz v4, :cond_3

    .line 64
    invoke-static {}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->getInstance()Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;

    move-result-object v4

    const-wide v5, 0x40b3880000000000L    # 5000.0

    invoke-virtual {v4, v5, v6, v2}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->estimate(DB)V

    .line 66
    :cond_3
    iput-object v3, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->e:Ljava/lang/Throwable;

    .line 67
    nop

    .end local v0    # "size":I
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .end local p3    # "byteCount":I
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 74
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "size":I
    .restart local p1    # "buffer":[B
    .restart local p2    # "offset":I
    .restart local p3    # "byteCount":I
    :catchall_1
    move-exception v2

    if-eq v0, v1, :cond_4

    :try_start_4
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->e:Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    :cond_4
    iget-boolean v1, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->a:Z

    if-nez v1, :cond_5

    .line 76
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->monitorLog()V

    :cond_5
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 50
    .end local v0    # "size":I
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .end local p3    # "byteCount":I
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method
