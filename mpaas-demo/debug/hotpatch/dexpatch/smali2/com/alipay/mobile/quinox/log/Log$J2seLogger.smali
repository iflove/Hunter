.class public Lcom/alipay/mobile/quinox/log/Log$J2seLogger;
.super Lcom/alipay/mobile/quinox/log/Logger;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/log/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "J2seLogger"
.end annotation


# static fields
.field private static a:Ljava/text/DateFormat;

.field private static b:Lcom/alipay/mobile/quinox/log/Log$J2seLogger;


# instance fields
.field buf:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 131
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd hh:mm:ss:SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->a:Ljava/text/DateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 135
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/log/Logger;-><init>()V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->buf:Ljava/lang/StringBuilder;

    .line 137
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "level"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    monitor-enter p0

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->buf:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->a:Ljava/text/DateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->buf:Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 201
    .end local p0    # "this":Lcom/alipay/mobile/quinox/log/Log$J2seLogger;
    :cond_0
    const/4 v0, 0x0

    .line 203
    .local v0, "iRet":I
    const/4 v1, 0x0

    :try_start_1
    const-class v2, Ljava/lang/System;

    const-string v3, "out"

    .line 204
    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "println"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->buf:Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    .line 203
    invoke-static {v2, v3, v5, v4}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    :try_start_2
    iget-object v2, p0, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v2

    .line 209
    const/4 v0, -0x1

    .line 211
    iget-object v2, p0, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    :goto_0
    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 212
    nop

    .line 214
    monitor-exit p0

    return v0

    .line 194
    .end local v0    # "iRet":I
    .end local p1    # "level":Ljava/lang/String;
    .end local p2    # "tag":Ljava/lang/String;
    .end local p3    # "msg":Ljava/lang/String;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getInstance()Lcom/alipay/mobile/quinox/log/Log$J2seLogger;
    .locals 2

    .line 142
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->b:Lcom/alipay/mobile/quinox/log/Log$J2seLogger;

    if-nez v0, :cond_1

    .line 143
    const-class v0, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;

    monitor-enter v0

    .line 144
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->b:Lcom/alipay/mobile/quinox/log/Log$J2seLogger;

    if-nez v1, :cond_0

    .line 145
    new-instance v1, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;

    invoke-direct {v1}, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;-><init>()V

    sput-object v1, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->b:Lcom/alipay/mobile/quinox/log/Log$J2seLogger;

    .line 147
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 149
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->b:Lcom/alipay/mobile/quinox/log/Log$J2seLogger;

    return-object v0
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 159
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->LEVEL_TO_LVL:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 174
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->LEVEL_TO_LVL:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 179
    const-string v0, ""

    .line 180
    .local v0, "msg":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 182
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 183
    .local v1, "sw":Ljava/io/StringWriter;
    :try_start_1
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 184
    .local v2, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 185
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 186
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    .line 189
    .end local v1    # "sw":Ljava/io/StringWriter;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    goto :goto_1

    .line 187
    :catchall_0
    move-exception v2

    goto :goto_0

    :catchall_1
    move-exception v1

    const/4 v1, 0x0

    .line 188
    .local v1, "e":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 191
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    return-object v0
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 164
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->LEVEL_TO_LVL:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public verbose(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 154
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->LEVEL_TO_LVL:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public warn(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 169
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->LEVEL_TO_LVL:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
