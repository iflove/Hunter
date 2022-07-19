.class public final Lcom/alipay/mobile/quinox/log/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/quinox/log/Log$J2seLogger;,
        Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/mobile/quinox/log/Logger;

.field private static b:Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;

.field private static c:Lcom/alipay/mobile/quinox/log/Log$J2seLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 223
    invoke-static {}, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;->getInstance()Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/quinox/log/Log;->b:Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;

    .line 225
    invoke-static {}, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->getInstance()Lcom/alipay/mobile/quinox/log/Log$J2seLogger;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/quinox/log/Log;->c:Lcom/alipay/mobile/quinox/log/Log$J2seLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    return-void
.end method

.method static synthetic access$000()Lcom/alipay/mobile/quinox/log/Log$J2seLogger;
    .locals 1

    .line 24
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->c:Lcom/alipay/mobile/quinox/log/Log$J2seLogger;

    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 258
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->a:Lcom/alipay/mobile/quinox/log/Logger;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/quinox/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->b:Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;

    .line 259
    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->c:Lcom/alipay/mobile/quinox/log/Log$J2seLogger;

    .line 260
    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 270
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->a:Lcom/alipay/mobile/quinox/log/Logger;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/mobile/quinox/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->b:Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;

    .line 271
    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->c:Lcom/alipay/mobile/quinox/log/Log$J2seLogger;

    .line 272
    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 264
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->a:Lcom/alipay/mobile/quinox/log/Logger;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/quinox/log/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->b:Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;

    .line 265
    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;->d(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->c:Lcom/alipay/mobile/quinox/log/Log$J2seLogger;

    .line 266
    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->d(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 312
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->a:Lcom/alipay/mobile/quinox/log/Logger;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/quinox/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->b:Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;

    .line 313
    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->c:Lcom/alipay/mobile/quinox/log/Log$J2seLogger;

    .line 314
    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 324
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->a:Lcom/alipay/mobile/quinox/log/Logger;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/mobile/quinox/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->b:Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;

    .line 325
    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->c:Lcom/alipay/mobile/quinox/log/Log$J2seLogger;

    .line 326
    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 318
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->a:Lcom/alipay/mobile/quinox/log/Logger;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/quinox/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->b:Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;

    .line 319
    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->c:Lcom/alipay/mobile/quinox/log/Log$J2seLogger;

    .line 320
    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 276
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->a:Lcom/alipay/mobile/quinox/log/Logger;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/quinox/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->b:Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;

    .line 277
    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->c:Lcom/alipay/mobile/quinox/log/Log$J2seLogger;

    .line 278
    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 288
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->a:Lcom/alipay/mobile/quinox/log/Logger;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/mobile/quinox/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->b:Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;

    .line 289
    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->c:Lcom/alipay/mobile/quinox/log/Log$J2seLogger;

    .line 290
    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 282
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->a:Lcom/alipay/mobile/quinox/log/Logger;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/quinox/log/Logger;->i(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->b:Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;

    .line 283
    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->c:Lcom/alipay/mobile/quinox/log/Log$J2seLogger;

    .line 284
    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    :cond_1
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 1
    .param p0, "level"    # I

    .line 232
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->a:Lcom/alipay/mobile/quinox/log/Logger;

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/quinox/log/Logger;->setLogLevel(I)V

    .line 235
    :cond_0
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->b:Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;->setLogLevel(I)V

    .line 236
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->c:Lcom/alipay/mobile/quinox/log/Log$J2seLogger;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->setLogLevel(I)V

    .line 237
    return-void
.end method

.method public static setLogger(Lcom/alipay/mobile/quinox/log/Logger;)V
    .locals 0
    .param p0, "logger"    # Lcom/alipay/mobile/quinox/log/Logger;

    .line 228
    sput-object p0, Lcom/alipay/mobile/quinox/log/Log;->a:Lcom/alipay/mobile/quinox/log/Logger;

    .line 229
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 240
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->a:Lcom/alipay/mobile/quinox/log/Logger;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/quinox/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->b:Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;

    .line 241
    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->c:Lcom/alipay/mobile/quinox/log/Log$J2seLogger;

    .line 242
    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_1
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 252
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->a:Lcom/alipay/mobile/quinox/log/Logger;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/mobile/quinox/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->b:Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;

    .line 253
    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->c:Lcom/alipay/mobile/quinox/log/Log$J2seLogger;

    .line 254
    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    :cond_1
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 246
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->a:Lcom/alipay/mobile/quinox/log/Logger;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/quinox/log/Logger;->v(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->b:Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;

    .line 247
    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;->v(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->c:Lcom/alipay/mobile/quinox/log/Log$J2seLogger;

    .line 248
    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->v(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 294
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->a:Lcom/alipay/mobile/quinox/log/Logger;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/quinox/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->b:Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;

    .line 295
    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->c:Lcom/alipay/mobile/quinox/log/Log$J2seLogger;

    .line 296
    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 306
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->a:Lcom/alipay/mobile/quinox/log/Logger;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/mobile/quinox/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->b:Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;

    .line 307
    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->c:Lcom/alipay/mobile/quinox/log/Log$J2seLogger;

    .line 308
    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 300
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->a:Lcom/alipay/mobile/quinox/log/Logger;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/quinox/log/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->b:Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;

    .line 301
    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/quinox/log/Log;->c:Lcom/alipay/mobile/quinox/log/Log$J2seLogger;

    .line 302
    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    :cond_1
    return-void
.end method
