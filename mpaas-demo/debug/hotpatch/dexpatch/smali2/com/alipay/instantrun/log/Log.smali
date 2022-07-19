.class public final Lcom/alipay/instantrun/log/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/instantrun/log/Log$AndroidLogger;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "IR.Log"

.field private static sAndroidLogger:Lcom/alipay/instantrun/log/Log$AndroidLogger;

.field private static sTargetLogger:Lcom/alipay/instantrun/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    invoke-static {}, Lcom/alipay/instantrun/log/Log$AndroidLogger;->getInstance()Lcom/alipay/instantrun/log/Log$AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/alipay/instantrun/log/Log;->sAndroidLogger:Lcom/alipay/instantrun/log/Log$AndroidLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 124
    sget-object v0, Lcom/alipay/instantrun/log/Log;->sTargetLogger:Lcom/alipay/instantrun/log/Logger;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1}, Lcom/alipay/instantrun/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 125
    :cond_0
    sget-object v0, Lcom/alipay/instantrun/log/Log;->sAndroidLogger:Lcom/alipay/instantrun/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/instantrun/log/Log$AndroidLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 136
    sget-object v0, Lcom/alipay/instantrun/log/Log;->sTargetLogger:Lcom/alipay/instantrun/log/Logger;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/instantrun/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 137
    :cond_0
    sget-object v0, Lcom/alipay/instantrun/log/Log;->sAndroidLogger:Lcom/alipay/instantrun/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/instantrun/log/Log$AndroidLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 130
    sget-object v0, Lcom/alipay/instantrun/log/Log;->sTargetLogger:Lcom/alipay/instantrun/log/Logger;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1}, Lcom/alipay/instantrun/log/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 131
    :cond_0
    sget-object v0, Lcom/alipay/instantrun/log/Log;->sAndroidLogger:Lcom/alipay/instantrun/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/instantrun/log/Log$AndroidLogger;->d(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 178
    sget-object v0, Lcom/alipay/instantrun/log/Log;->sTargetLogger:Lcom/alipay/instantrun/log/Logger;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1}, Lcom/alipay/instantrun/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 179
    :cond_0
    sget-object v0, Lcom/alipay/instantrun/log/Log;->sAndroidLogger:Lcom/alipay/instantrun/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/instantrun/log/Log$AndroidLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 190
    sget-object v0, Lcom/alipay/instantrun/log/Log;->sTargetLogger:Lcom/alipay/instantrun/log/Logger;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/instantrun/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 191
    :cond_0
    sget-object v0, Lcom/alipay/instantrun/log/Log;->sAndroidLogger:Lcom/alipay/instantrun/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/instantrun/log/Log$AndroidLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 184
    sget-object v0, Lcom/alipay/instantrun/log/Log;->sTargetLogger:Lcom/alipay/instantrun/log/Logger;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1}, Lcom/alipay/instantrun/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 185
    :cond_0
    sget-object v0, Lcom/alipay/instantrun/log/Log;->sAndroidLogger:Lcom/alipay/instantrun/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/instantrun/log/Log$AndroidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    :cond_1
    return-void
.end method

.method public static footprint(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 196
    sget-object v0, Lcom/alipay/instantrun/log/Log;->sTargetLogger:Lcom/alipay/instantrun/log/Logger;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, p0}, Lcom/alipay/instantrun/log/Logger;->footprint(Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 197
    :cond_0
    sget-object v0, Lcom/alipay/instantrun/log/Log;->sAndroidLogger:Lcom/alipay/instantrun/log/Log$AndroidLogger;

    invoke-virtual {v0, p0}, Lcom/alipay/instantrun/log/Log$AndroidLogger;->footprint(Ljava/lang/String;)I

    .line 199
    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 142
    sget-object v0, Lcom/alipay/instantrun/log/Log;->sTargetLogger:Lcom/alipay/instantrun/log/Logger;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1}, Lcom/alipay/instantrun/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 143
    :cond_0
    sget-object v0, Lcom/alipay/instantrun/log/Log;->sAndroidLogger:Lcom/alipay/instantrun/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/instantrun/log/Log$AndroidLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 154
    sget-object v0, Lcom/alipay/instantrun/log/Log;->sTargetLogger:Lcom/alipay/instantrun/log/Logger;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/instantrun/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 155
    :cond_0
    sget-object v0, Lcom/alipay/instantrun/log/Log;->sAndroidLogger:Lcom/alipay/instantrun/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/instantrun/log/Log$AndroidLogger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 148
    sget-object v0, Lcom/alipay/instantrun/log/Log;->sTargetLogger:Lcom/alipay/instantrun/log/Logger;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1}, Lcom/alipay/instantrun/log/Logger;->i(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 149
    :cond_0
    sget-object v0, Lcom/alipay/instantrun/log/Log;->sAndroidLogger:Lcom/alipay/instantrun/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/instantrun/log/Log$AndroidLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    :cond_1
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 1
    .param p0, "level"    # I

    .line 99
    sget-object v0, Lcom/alipay/instantrun/log/Log;->sTargetLogger:Lcom/alipay/instantrun/log/Logger;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0, p0}, Lcom/alipay/instantrun/log/Logger;->setLogLevel(I)V

    .line 102
    :cond_0
    sget-object v0, Lcom/alipay/instantrun/log/Log;->sAndroidLogger:Lcom/alipay/instantrun/log/Log$AndroidLogger;

    invoke-virtual {v0, p0}, Lcom/alipay/instantrun/log/Log$AndroidLogger;->setLogLevel(I)V

    .line 103
    return-void
.end method

.method public static setLogger(Lcom/alipay/instantrun/log/Logger;)V
    .locals 2
    .param p0, "logger"    # Lcom/alipay/instantrun/log/Logger;

    .line 92
    if-eqz p0, :cond_0

    .line 93
    sput-object p0, Lcom/alipay/instantrun/log/Log;->sTargetLogger:Lcom/alipay/instantrun/log/Logger;

    .line 94
    sget-object v0, Lcom/alipay/instantrun/log/Log;->sAndroidLogger:Lcom/alipay/instantrun/log/Log$AndroidLogger;

    iget v1, p0, Lcom/alipay/instantrun/log/Logger;->LOG_LEVEL:I

    invoke-virtual {v0, v1}, Lcom/alipay/instantrun/log/Log$AndroidLogger;->setLogLevel(I)V

    .line 96
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 106
    sget-object v0, Lcom/alipay/instantrun/log/Log;->sTargetLogger:Lcom/alipay/instantrun/log/Logger;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1}, Lcom/alipay/instantrun/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 107
    :cond_0
    sget-object v0, Lcom/alipay/instantrun/log/Log;->sAndroidLogger:Lcom/alipay/instantrun/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/instantrun/log/Log$AndroidLogger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_1
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 118
    sget-object v0, Lcom/alipay/instantrun/log/Log;->sTargetLogger:Lcom/alipay/instantrun/log/Logger;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/instantrun/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 119
    :cond_0
    sget-object v0, Lcom/alipay/instantrun/log/Log;->sAndroidLogger:Lcom/alipay/instantrun/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/instantrun/log/Log$AndroidLogger;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    :cond_1
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 112
    sget-object v0, Lcom/alipay/instantrun/log/Log;->sTargetLogger:Lcom/alipay/instantrun/log/Logger;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1}, Lcom/alipay/instantrun/log/Logger;->v(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 113
    :cond_0
    sget-object v0, Lcom/alipay/instantrun/log/Log;->sAndroidLogger:Lcom/alipay/instantrun/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/instantrun/log/Log$AndroidLogger;->v(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 160
    sget-object v0, Lcom/alipay/instantrun/log/Log;->sTargetLogger:Lcom/alipay/instantrun/log/Logger;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1}, Lcom/alipay/instantrun/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 161
    :cond_0
    sget-object v0, Lcom/alipay/instantrun/log/Log;->sAndroidLogger:Lcom/alipay/instantrun/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/instantrun/log/Log$AndroidLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 172
    sget-object v0, Lcom/alipay/instantrun/log/Log;->sTargetLogger:Lcom/alipay/instantrun/log/Logger;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/instantrun/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 173
    :cond_0
    sget-object v0, Lcom/alipay/instantrun/log/Log;->sAndroidLogger:Lcom/alipay/instantrun/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/instantrun/log/Log$AndroidLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 166
    sget-object v0, Lcom/alipay/instantrun/log/Log;->sTargetLogger:Lcom/alipay/instantrun/log/Logger;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1}, Lcom/alipay/instantrun/log/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 167
    :cond_0
    sget-object v0, Lcom/alipay/instantrun/log/Log;->sAndroidLogger:Lcom/alipay/instantrun/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/instantrun/log/Log$AndroidLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    :cond_1
    return-void
.end method
