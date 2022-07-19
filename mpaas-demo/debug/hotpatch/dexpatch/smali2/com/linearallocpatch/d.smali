.class final Lcom/linearallocpatch/d;
.super Ljava/lang/Object;
.source "MemMap.java"


# instance fields
.field private a:J

.field private b:J

.field private c:I

.field private d:J

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/linearallocpatch/d;->b:J

    iput-wide v0, p0, Lcom/linearallocpatch/d;->a:J

    .line 202
    const/4 v2, 0x0

    iput v2, p0, Lcom/linearallocpatch/d;->c:I

    .line 203
    iput-wide v0, p0, Lcom/linearallocpatch/d;->d:J

    .line 204
    const-string v0, "--:--"

    iput-object v0, p0, Lcom/linearallocpatch/d;->e:Ljava/lang/String;

    .line 205
    iput v2, p0, Lcom/linearallocpatch/d;->f:I

    .line 206
    const-string v0, ""

    iput-object v0, p0, Lcom/linearallocpatch/d;->g:Ljava/lang/String;

    .line 207
    return-void
.end method

.method static a(Ljava/util/List;Ljava/lang/String;)Lcom/linearallocpatch/d;
    .locals 5
    .param p0, "mapList"    # Ljava/util/List;
    .param p1, "pathName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/linearallocpatch/d;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/linearallocpatch/d;"
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 37
    return-object v0

    .line 40
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    move-object v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/linearallocpatch/d;

    .line 41
    .local v2, "map":Lcom/linearallocpatch/d;
    move-object v2, v4

    invoke-direct {v4}, Lcom/linearallocpatch/d;->d()Ljava/lang/String;

    move-result-object v4

    .line 43
    .local v3, "currPath":Ljava/lang/String;
    move-object v3, v4

    if-eqz v4, :cond_1

    .line 44
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 45
    return-object v2

    .line 48
    .end local v2    # "map":Lcom/linearallocpatch/d;
    .end local v3    # "currPath":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 50
    :cond_2
    return-object v0
.end method

.method static a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/linearallocpatch/d;",
            ">;"
        }
    .end annotation

    .line 69
    const-string v0, "/proc/self/maps"

    invoke-static {v0}, Lcom/linearallocpatch/d;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/linearallocpatch/d;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v0, "resu":Ljava/util/List;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 86
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    const/4 v3, 0x0

    .line 90
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "line":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 91
    invoke-static {v5}, Lcom/linearallocpatch/d;->b(Ljava/lang/String;)Lcom/linearallocpatch/d;

    move-result-object v4

    .line 93
    .local v3, "map":Lcom/linearallocpatch/d;
    move-object v3, v4

    if-eqz v4, :cond_0

    .line 94
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .end local v3    # "map":Lcom/linearallocpatch/d;
    :cond_0
    goto :goto_0

    .line 102
    .end local v5    # "line":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    :goto_1
    goto :goto_2

    .line 103
    :catch_0
    move-exception v3

    goto :goto_1

    .line 100
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 97
    :catch_1
    move-exception v3

    .line 98
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "MemMap"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fatal error reading "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_2

    .line 102
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 109
    :cond_2
    :goto_2
    return-object v0

    .line 100
    :goto_3
    if-eqz v2, :cond_3

    .line 102
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 105
    goto :goto_4

    .line 103
    :catch_2
    move-exception v4

    .line 105
    :cond_3
    :goto_4
    throw v3
.end method

.method static a(Ljava/util/List;)V
    .locals 1
    .param p0, "mapList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/linearallocpatch/d;",
            ">;)V"
        }
    .end annotation

    .line 55
    if-nez p0, :cond_0

    .line 56
    return-void

    .line 59
    :cond_0
    new-instance v0, Lcom/linearallocpatch/d$1;

    invoke-direct {v0}, Lcom/linearallocpatch/d$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 65
    return-void
.end method

.method private static b(Ljava/lang/String;)Lcom/linearallocpatch/d;
    .locals 9
    .param p0, "mmapFileLine"    # Ljava/lang/String;

    .line 113
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 114
    return-object v1

    .line 120
    :cond_0
    const-string v0, "([0-9a-zA-Z]+)-([0-9a-zA-Z]+)\\s+([rwxps-]+)\\s+([0-9a-zA-Z]+)\\s+([^\\s]+)[\\s+]([^\\s]+)\\s+(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 125
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    move-object v2, v1

    .line 127
    .local v2, "matcher":Ljava/util/regex/Matcher;
    move-object v2, v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string v3, "]"

    const-string v4, "MemMap"

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    const/4 v5, 0x7

    if-ge v0, v5, :cond_1

    goto :goto_0

    .line 134
    :cond_1
    :try_start_0
    new-instance v0, Lcom/linearallocpatch/d;

    invoke-direct {v0}, Lcom/linearallocpatch/d;-><init>()V

    move-object v6, v1

    .line 136
    .local v6, "map":Lcom/linearallocpatch/d;
    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/linearallocpatch/d;->c(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v0, Lcom/linearallocpatch/d;->a:J

    .line 137
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/linearallocpatch/d;->c(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/linearallocpatch/d;->b:J

    .line 139
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/linearallocpatch/d;->d(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/linearallocpatch/d;->c:I

    .line 140
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/linearallocpatch/d;->c(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/linearallocpatch/d;->d:J

    .line 141
    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/linearallocpatch/d;->e:Ljava/lang/String;

    .line 143
    const/4 v0, 0x6

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/linearallocpatch/d;->c(Ljava/lang/String;)J

    move-result-wide v7

    long-to-int v0, v7

    iput v0, v6, Lcom/linearallocpatch/d;->f:I

    .line 145
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/linearallocpatch/d;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    return-object v6

    .line 148
    .end local v6    # "map":Lcom/linearallocpatch/d;
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "exception during parsing line = ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    return-object v1

    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "cannot parse line = ["

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-object v1
.end method

.method private static c(Ljava/lang/String;)J
    .locals 2
    .param p0, "hexStr"    # Ljava/lang/String;

    .line 155
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0

    .line 156
    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Please tell me how to convert EMPTY to a number?"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static d(Ljava/lang/String;)I
    .locals 2
    .param p0, "permStr"    # Ljava/lang/String;

    .line 163
    const/4 v0, 0x0

    .line 165
    .local v0, "resu":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const/4 v1, 0x0

    return v1

    .line 169
    :cond_0
    const/16 v1, 0x72

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 170
    const/4 v0, 0x1

    .line 173
    :cond_1
    const/16 v1, 0x77

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 174
    or-int/lit8 v0, v0, 0x2

    .line 177
    :cond_2
    const/16 v1, 0x78

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_3

    .line 178
    or-int/lit8 v0, v0, 0x4

    .line 181
    :cond_3
    const/16 v1, 0x73

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_4

    .line 182
    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    .line 185
    :cond_4
    const/16 v1, 0x70

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_5

    .line 186
    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    .line 189
    :cond_5
    return v0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/linearallocpatch/d;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method final b()J
    .locals 2

    .line 210
    iget-wide v0, p0, Lcom/linearallocpatch/d;->a:J

    return-wide v0
.end method

.method final c()J
    .locals 2

    .line 214
    iget-wide v0, p0, Lcom/linearallocpatch/d;->b:J

    return-wide v0
.end method
