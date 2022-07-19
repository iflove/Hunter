.class public Lcom/alipay/mobile/common/transport/utils/DebugLogConfig;
.super Ljava/lang/Object;
.source "DebugLogConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/transport/utils/DebugLogConfig$DalvikLogHandler;
    }
.end annotation


# static fields
.field static activeHandler:Lcom/alipay/mobile/common/transport/utils/DebugLogConfig$DalvikLogHandler;

.field static enabledH2Logger:Z

.field static enabledHttpClientLogger:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/common/transport/utils/DebugLogConfig;->enabledHttpClientLogger:Z

    .line 30
    sput-boolean v0, Lcom/alipay/mobile/common/transport/utils/DebugLogConfig;->enabledH2Logger:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 4

    .line 145
    const-string v0, "DebugLogConfig"

    sget-object v1, Lcom/alipay/mobile/common/transport/utils/DebugLogConfig;->activeHandler:Lcom/alipay/mobile/common/transport/utils/DebugLogConfig$DalvikLogHandler;

    if-eqz v1, :cond_0

    .line 146
    return-void

    .line 149
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    .line 150
    .local v1, "rootLogger":Ljava/util/logging/Logger;
    new-instance v2, Lcom/alipay/mobile/common/transport/utils/DebugLogConfig$DalvikLogHandler;

    invoke-direct {v2}, Lcom/alipay/mobile/common/transport/utils/DebugLogConfig$DalvikLogHandler;-><init>()V

    .line 151
    sput-object v2, Lcom/alipay/mobile/common/transport/utils/DebugLogConfig;->activeHandler:Lcom/alipay/mobile/common/transport/utils/DebugLogConfig$DalvikLogHandler;

    sget-object v3, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/utils/DebugLogConfig$DalvikLogHandler;->setLevel(Ljava/util/logging/Level;)V

    .line 152
    sget-object v2, Lcom/alipay/mobile/common/transport/utils/DebugLogConfig;->activeHandler:Lcom/alipay/mobile/common/transport/utils/DebugLogConfig$DalvikLogHandler;

    new-instance v3, Ljava/util/logging/SimpleFormatter;

    invoke-direct {v3}, Ljava/util/logging/SimpleFormatter;-><init>()V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/utils/DebugLogConfig$DalvikLogHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 153
    sget-object v2, Lcom/alipay/mobile/common/transport/utils/DebugLogConfig;->activeHandler:Lcom/alipay/mobile/common/transport/utils/DebugLogConfig$DalvikLogHandler;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 154
    const-string v2, "[registerLogHandler] finish."

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    .end local v1    # "rootLogger":Ljava/util/logging/Logger;
    return-void

    .line 155
    :catchall_0
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "[registerLogHandler] Error"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public static enableH2Logger()V
    .locals 5

    .line 79
    const-string v0, "DebugLogConfig"

    sget-boolean v1, Lcom/alipay/mobile/common/transport/utils/DebugLogConfig;->enabledH2Logger:Z

    if-eqz v1, :cond_0

    .line 80
    return-void

    .line 82
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alipay/mobile/common/transport/utils/DebugLogConfig;->enabledH2Logger:Z

    .line 85
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/DebugLogConfig;->a()V

    .line 86
    const-string v1, "com.android.okhttp.level = FINEST"

    .line 87
    .local v1, "config":Ljava/lang/String;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 88
    .local v2, "in":Ljava/io/InputStream;
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/logging/LogManager;->readConfiguration(Ljava/io/InputStream;)V

    .line 90
    const-string v3, "com.android.okhttp.OkHttpClient"

    invoke-static {v3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 91
    const-string v3, "com.android.okhttp"

    invoke-static {v3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 92
    const-string v3, "[enableH2Logger] finish."

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .end local v1    # "config":Ljava/lang/String;
    .end local v2    # "in":Ljava/io/InputStream;
    return-void

    .line 93
    :catchall_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "[enableH2Logger] error"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public static enableHttpClient()V
    .locals 6

    .line 100
    const-string v0, "debug"

    sget-boolean v1, Lcom/alipay/mobile/common/transport/utils/DebugLogConfig;->enabledHttpClientLogger:Z

    if-eqz v1, :cond_0

    .line 101
    return-void

    .line 103
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alipay/mobile/common/transport/utils/DebugLogConfig;->enabledHttpClientLogger:Z

    .line 105
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/DebugLogConfig;->a()V

    .line 107
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "DebugLogConfig"

    if-nez v1, :cond_1

    .line 108
    const-string v0, "[enableHttpClient] Not debugger, return."

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void

    .line 112
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SYSTEM_LOGGER_ENABLE:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v4, "T"

    invoke-virtual {v1, v3, v4}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 113
    const-string v0, "[enableHttpClient] SYSTEM_LOGGER_ENABLE it\'s off, return."

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void

    .line 118
    :cond_2
    :try_start_0
    const-string/jumbo v1, "org.apache.http.impl.conn.level = FINEST\norg.apache.http.impl.client.level = FINEST\norg.apache.http.client.level = FINEST\norg.apache.http.level = FINEST \n"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 122
    .local v1, "config":Ljava/lang/String;
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 123
    .local v3, "in":Ljava/io/InputStream;
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/logging/LogManager;->readConfiguration(Ljava/io/InputStream;)V

    .line 125
    const-string/jumbo v4, "org.apache.http.wire"

    invoke-static {v4}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 126
    const-string v4, "httpclient.wire.content"

    invoke-static {v4}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 127
    const-string/jumbo v4, "org.apache.http.headers"

    invoke-static {v4}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 128
    const-string v4, "httpclient.wire.header"

    invoke-static {v4}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 129
    const-string v4, "com.alipay.mobile.common.transport.http"

    invoke-static {v4}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 130
    const-string/jumbo v4, "org.apache.http.impl.conn.tsccm"

    invoke-static {v4}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 132
    const-string/jumbo v4, "org.apache.commons.logging.Log"

    const-string/jumbo v5, "org.apache.commons.logging.impl.SimpleLog"

    invoke-static {v4, v5}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    const-string/jumbo v4, "org.apache.commons.logging.simplelog.showdatetime"

    const-string/jumbo v5, "true"

    invoke-static {v4, v5}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    const-string/jumbo v4, "org.apache.commons.logging.simplelog.log.httpclient.wire"

    invoke-static {v4, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    const-string/jumbo v4, "org.apache.commons.logging.simplelog.log.org.apache.http"

    invoke-static {v4, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    const-string/jumbo v4, "org.apache.commons.logging.simplelog.log.org.apache.http.headers"

    invoke-static {v4, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    const-string v0, "[enableHttpClient] Enabled httpclient log."

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    .end local v1    # "config":Ljava/lang/String;
    .end local v3    # "in":Ljava/io/InputStream;
    return-void

    .line 138
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .line 139
    .local v0, "e":Ljava/lang/Throwable;
    const-class v1, Lcom/alipay/mobile/common/transport/utils/DebugLogConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can\'t read configuration file for logging"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method
