.class public Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer;
.super Ljava/lang/Object;
.source "BugReportAnalyzer.java"


# static fields
.field private static a:Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer;


# instance fields
.field private b:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer;->b:J

    .line 33
    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 10
    .param p0, "lines"    # I

    .line 147
    const-string v0, "close bufferedReader"

    const-string v1, "close logcatProc"

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "start getLogcat for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " lines."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BugReportAnalyzer"

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/4 v2, 0x0

    .line 149
    .local v2, "logcatProcess":Ljava/lang/Process;
    const/4 v3, 0x0

    .line 151
    .local v3, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "logcat -v time -d -t "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    move-object v2, v5

    .line 152
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v5

    .line 153
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 157
    .local v5, "stringBuffer":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v7, v6

    .local v7, "line":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 159
    :try_start_1
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    :goto_1
    goto :goto_0

    .line 160
    :catchall_0
    move-exception v6

    .line 161
    .local v6, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v8

    const-string/jumbo v9, "skip"

    invoke-interface {v8, v4, v9, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v6    # "e":Ljava/lang/Throwable;
    goto :goto_1

    .line 164
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 169
    if-eqz v2, :cond_1

    .line 170
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 172
    :catchall_1
    move-exception v8

    .line 173
    .local v8, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    invoke-interface {v9, v4, v1, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 174
    .end local v8    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_2
    nop

    .line 177
    :goto_3
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 181
    goto :goto_4

    .line 179
    :catchall_2
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v8

    invoke-interface {v8, v4, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_4
    return-object v6

    .line 165
    .end local v5    # "stringBuffer":Ljava/lang/StringBuffer;
    .end local v7    # "line":Ljava/lang/String;
    :catchall_3
    move-exception v5

    .line 166
    .local v5, "e":Ljava/lang/Throwable;
    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string v7, "getLogcat"

    invoke-interface {v6, v4, v7, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 169
    .end local v5    # "e":Ljava/lang/Throwable;
    if-eqz v2, :cond_2

    .line 170
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_5

    .line 172
    :catchall_4
    move-exception v5

    .line 173
    .restart local v5    # "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    invoke-interface {v6, v4, v1, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 174
    .end local v5    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_5
    nop

    .line 176
    :goto_6
    if-eqz v3, :cond_3

    .line 177
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_7

    .line 179
    :catchall_5
    move-exception v1

    .line 180
    .restart local v1    # "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    invoke-interface {v5, v4, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    .end local v1    # "e":Ljava/lang/Throwable;
    goto :goto_8

    .line 181
    :cond_3
    :goto_7
    nop

    .line 184
    :goto_8
    const-string v0, ""

    return-object v0

    .line 168
    :catchall_6
    move-exception v5

    .line 169
    if-eqz v2, :cond_4

    .line 170
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    goto :goto_9

    .line 172
    :catchall_7
    move-exception v6

    .line 173
    .restart local v6    # "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    invoke-interface {v7, v4, v1, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 174
    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_4
    :goto_9
    nop

    .line 176
    :goto_a
    if-eqz v3, :cond_5

    .line 177
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    goto :goto_b

    .line 179
    :catchall_8
    move-exception v1

    .line 180
    .restart local v1    # "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    invoke-interface {v6, v4, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 181
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_5
    :goto_b
    nop

    :goto_c
    throw v5
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .param p1, "feedback_msg"    # Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "fit":Z
    const-string/jumbo v1, "\u5361\u6b7b"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    const-string/jumbo v1, "\u6b7b\u673a"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 63
    const-string/jumbo v1, "\u95ea\u9000"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    const-string/jumbo v1, "\u5d29\u6e83"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    const-string v1, "crash"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    const-string v1, "Crash"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 67
    const-string/jumbo v1, "\u505c\u6b62\u8fd0\u884c"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 68
    const-string/jumbo v1, "\u6253\u5f00\u652f\u4ed8\u5b9d"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    const-string/jumbo v1, "\u5f3a\u884c\u505c\u6b62"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    const-string/jumbo v1, "\u5f3a\u5236\u505c\u6b62"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    const-string/jumbo v1, "\u505c\u6b62\u670d\u52a1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 72
    const-string/jumbo v1, "\u9ed1\u5c4f"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "\u767d\u5c4f"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v1, "\u626b"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "\u4e8c\u7ef4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 73
    :cond_1
    const/4 v0, 0x1

    .line 76
    :cond_2
    if-eqz v0, :cond_3

    .line 77
    const/16 v1, 0xfa0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer;->reportLogcat(IZ)V

    .line 79
    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer;
    .param p1, "x1"    # I

    .line 17
    invoke-static {p1}, Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 7
    .param p1, "feedback_msg"    # Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 87
    .local v2, "pat1":Ljava/util/Set;
    move-object v2, v0

    const-string/jumbo v3, "\u5b89\u88c5"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    const-string/jumbo v0, "\u5347\u7ea7"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 90
    .local v1, "pat2":Ljava/util/Set;
    move-object v1, v0

    const-string/jumbo v3, "\u65e0\u6cd5"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    const-string/jumbo v0, "\u4e0d\u4e86"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    const-string/jumbo v0, "\u5931\u8d25"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    const-string/jumbo v0, "\u4e0d\u80fd"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "fit1":Z
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 97
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 98
    const/4 v0, 0x1

    .line 100
    .end local v4    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 102
    :cond_1
    const/4 v3, 0x0

    .line 103
    .local v3, "fit2":Z
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 104
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 105
    const/4 v3, 0x1

    .line 107
    .end local v5    # "key":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 109
    :cond_3
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 110
    const/16 v4, 0x5dc

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer;->reportLogcat(IZ)V

    .line 112
    :cond_4
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer;
    .locals 2

    const-class v0, Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer;->a:Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer;->a:Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer;

    .line 28
    :cond_0
    sget-object v1, Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer;->a:Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 24
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public analyze(Ljava/lang/Object;)V
    .locals 3
    .param p1, "feedback_msg"    # Ljava/lang/Object;

    .line 42
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    .line 43
    .local v1, "feedback_msg_str":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    return-void

    .line 47
    :cond_0
    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer;->a(Ljava/lang/String;)V

    .line 48
    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .end local v1    # "feedback_msg_str":Ljava/lang/String;
    return-void

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "BugReportAnalyzer"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method public reportLogcat(IZ)V
    .locals 7
    .param p1, "lines"    # I
    .param p2, "sync"    # Z

    .line 118
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    .line 119
    .local v2, "now":J
    move-wide v2, v0

    iget-wide v4, p0, Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer;->b:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    .line 120
    return-void

    .line 122
    :cond_0
    iput-wide v2, p0, Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer;->b:J

    .line 123
    new-instance v0, Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer$1;-><init>(Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer;IZ)V

    .line 139
    .local v0, "reportRunnable":Ljava/lang/Runnable;
    if-eqz p2, :cond_1

    .line 140
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 142
    :cond_1
    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingAsyncTaskExecutor;->execute(Ljava/lang/Runnable;)V

    .line 144
    return-void
.end method
