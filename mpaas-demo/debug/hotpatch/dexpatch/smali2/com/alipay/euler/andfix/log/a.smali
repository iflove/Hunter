.class public final Lcom/alipay/euler/andfix/log/a;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/euler/andfix/log/a$a;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/euler/andfix/log/Logger;

.field private static b:Lcom/alipay/euler/andfix/log/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    invoke-static {}, Lcom/alipay/euler/andfix/log/a$a;->a()Lcom/alipay/euler/andfix/log/a$a;

    move-result-object v0

    sput-object v0, Lcom/alipay/euler/andfix/log/a;->b:Lcom/alipay/euler/andfix/log/a$a;

    return-void
.end method

.method public static a(Lcom/alipay/euler/andfix/log/Logger;)V
    .locals 1

    .line 71
    if-eqz p0, :cond_0

    .line 72
    sput-object p0, Lcom/alipay/euler/andfix/log/a;->a:Lcom/alipay/euler/andfix/log/Logger;

    .line 73
    sget-object v0, Lcom/alipay/euler/andfix/log/a;->b:Lcom/alipay/euler/andfix/log/a$a;

    iget p0, p0, Lcom/alipay/euler/andfix/log/Logger;->a:I

    invoke-virtual {v0, p0}, Lcom/alipay/euler/andfix/log/a$a;->setLogLevel(I)V

    .line 75
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 121
    sget-object v0, Lcom/alipay/euler/andfix/log/a;->a:Lcom/alipay/euler/andfix/log/Logger;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1}, Lcom/alipay/euler/andfix/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 122
    :cond_0
    sget-object v0, Lcom/alipay/euler/andfix/log/a;->b:Lcom/alipay/euler/andfix/log/a$a;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/euler/andfix/log/a$a;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 133
    sget-object v0, Lcom/alipay/euler/andfix/log/a;->a:Lcom/alipay/euler/andfix/log/Logger;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/euler/andfix/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 134
    :cond_0
    sget-object v0, Lcom/alipay/euler/andfix/log/a;->b:Lcom/alipay/euler/andfix/log/a$a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/euler/andfix/log/a$a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 145
    sget-object v0, Lcom/alipay/euler/andfix/log/a;->a:Lcom/alipay/euler/andfix/log/Logger;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1}, Lcom/alipay/euler/andfix/log/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 146
    :cond_0
    sget-object v0, Lcom/alipay/euler/andfix/log/a;->b:Lcom/alipay/euler/andfix/log/a$a;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/euler/andfix/log/a$a;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    :cond_1
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 139
    sget-object v0, Lcom/alipay/euler/andfix/log/a;->a:Lcom/alipay/euler/andfix/log/Logger;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1}, Lcom/alipay/euler/andfix/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 140
    :cond_0
    sget-object v0, Lcom/alipay/euler/andfix/log/a;->b:Lcom/alipay/euler/andfix/log/a$a;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/euler/andfix/log/a$a;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_1
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 151
    sget-object v0, Lcom/alipay/euler/andfix/log/a;->a:Lcom/alipay/euler/andfix/log/Logger;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/euler/andfix/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 152
    :cond_0
    sget-object v0, Lcom/alipay/euler/andfix/log/a;->b:Lcom/alipay/euler/andfix/log/a$a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/euler/andfix/log/a$a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    :cond_1
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 163
    sget-object v0, Lcom/alipay/euler/andfix/log/a;->a:Lcom/alipay/euler/andfix/log/Logger;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1}, Lcom/alipay/euler/andfix/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 164
    :cond_0
    sget-object v0, Lcom/alipay/euler/andfix/log/a;->b:Lcom/alipay/euler/andfix/log/a$a;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/euler/andfix/log/a$a;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    :cond_1
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 157
    sget-object v0, Lcom/alipay/euler/andfix/log/a;->a:Lcom/alipay/euler/andfix/log/Logger;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1}, Lcom/alipay/euler/andfix/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 158
    :cond_0
    sget-object v0, Lcom/alipay/euler/andfix/log/a;->b:Lcom/alipay/euler/andfix/log/a$a;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/euler/andfix/log/a$a;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_1
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 169
    sget-object v0, Lcom/alipay/euler/andfix/log/a;->a:Lcom/alipay/euler/andfix/log/Logger;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/euler/andfix/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 170
    :cond_0
    sget-object v0, Lcom/alipay/euler/andfix/log/a;->b:Lcom/alipay/euler/andfix/log/a$a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/euler/andfix/log/a$a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    :cond_1
    return-void
.end method
