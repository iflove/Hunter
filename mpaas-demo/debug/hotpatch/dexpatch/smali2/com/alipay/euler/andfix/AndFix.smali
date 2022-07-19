.class public Lcom/alipay/euler/andfix/AndFix;
.super Ljava/lang/Object;
.source "AndFix.java"


# static fields
.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 356
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/euler/andfix/AndFix;->a:Z

    return-void
.end method

.method public static a(ILjava/lang/String;)I
    .locals 3

    .line 288
    const/16 v0, 0x16

    if-le p0, v0, :cond_0

    .line 291
    return p0

    .line 292
    :cond_0
    const/16 v0, 0x15

    if-le p0, v0, :cond_3

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "vmVersion: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AndFix"

    invoke-static {v2, v1}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    if-eqz p1, :cond_1

    const-string v1, "2.1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    return p0

    .line 298
    :cond_1
    if-eqz p1, :cond_2

    const-string/jumbo v1, "v1.2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 299
    return p0

    .line 304
    :cond_2
    return v0

    .line 307
    :cond_3
    return p0
.end method

.method public static a(Ljava/lang/Class;)V
    .locals 9

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "makeClassPublic:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AndFix"

    invoke-static {v1, v0}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/alipay/euler/andfix/Compat;->getAndFixVM()Lcom/alipay/euler/andfix/AndFixVM;

    move-result-object v0

    .line 106
    sget-object v2, Lcom/alipay/euler/andfix/AndFixVM;->AOC:Lcom/alipay/euler/andfix/AndFixVM;

    const-string/jumbo v3, "makeClassPublic failed"

    if-eq v0, v2, :cond_1

    sget-object v2, Lcom/alipay/euler/andfix/AndFixVM;->ART:Lcom/alipay/euler/andfix/AndFixVM;

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/alipay/euler/andfix/AndFix;->setClassPublic(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    return-void

    .line 173
    :catchall_0
    move-exception p0

    .line 174
    new-instance v0, Lcom/alipay/euler/andfix/a/a;

    invoke-direct {v0, v3, p0}, Lcom/alipay/euler/andfix/a/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 107
    :cond_1
    :goto_0
    nop

    .line 108
    nop

    .line 110
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 111
    const/4 v2, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    array-length v5, v0

    if-lez v5, :cond_3

    aget-object v5, v0, v2

    if-eqz v5, :cond_3

    .line 112
    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/alipay/euler/andfix/AndFix;->setClassPublicFromMethod(Ljava/lang/Object;)V

    .line 113
    nop

    .line 114
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/2addr v0, v4

    if-eqz v0, :cond_2

    .line 115
    const/4 v0, 0x1

    goto :goto_1

    .line 114
    :cond_2
    const/4 v0, 0x0

    .line 117
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "makeClassPublic work1:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    goto :goto_2

    .line 119
    :cond_3
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_4

    if-nez v0, :cond_6

    .line 120
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 121
    if-eqz v6, :cond_6

    array-length v7, v6

    if-lez v7, :cond_6

    aget-object v7, v6, v2

    if-eqz v7, :cond_6

    .line 122
    aget-object v5, v6, v2

    invoke-static {v5}, Lcom/alipay/euler/andfix/AndFix;->setClassPublicFromMethod(Ljava/lang/Object;)V

    .line 123
    nop

    .line 124
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v5

    and-int/2addr v5, v4

    if-eqz v5, :cond_5

    .line 125
    const/4 v0, 0x1

    .line 127
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "makeClassPublic work2:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 130
    :cond_6
    if-eqz v5, :cond_7

    if-nez v0, :cond_9

    .line 131
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 132
    if-eqz v6, :cond_9

    array-length v7, v6

    if-lez v7, :cond_9

    aget-object v7, v6, v2

    if-eqz v7, :cond_9

    .line 133
    aget-object v2, v6, v2

    invoke-static {v2}, Lcom/alipay/euler/andfix/AndFix;->setClassPublicFromField(Ljava/lang/Object;)V

    .line 134
    nop

    .line 135
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    and-int/2addr v2, v4

    if-eqz v2, :cond_8

    .line 136
    const/4 v0, 0x1

    .line 138
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "makeClassPublic work3:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 141
    :cond_9
    if-eqz v5, :cond_a

    if-nez v0, :cond_d

    .line 144
    :cond_a
    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1b

    if-gt v2, v6, :cond_c

    .line 145
    const-class v2, Ljava/lang/Class;

    const-string v6, "accessFlags"

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 146
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 147
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 148
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    and-int/2addr v7, v4

    if-nez v7, :cond_b

    .line 149
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "makeClassPublic by accessFlags ori:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    or-int/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, p0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 152
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "makeClassPublic by accessFlags:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 154
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "makeClassPublic by accessFlags no need work:"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    and-int/2addr p0, v4

    if-eqz p0, :cond_c

    .line 157
    goto :goto_4

    .line 162
    :cond_c
    move v4, v0

    :goto_4
    move v0, v4

    goto :goto_5

    .line 160
    :catchall_1
    move-exception p0

    .line 161
    invoke-static {v1, p0}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    :cond_d
    :goto_5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "makeClassPublic workFinal:"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    if-eqz v5, :cond_e

    .line 170
    return-void

    .line 168
    :cond_e
    new-instance p0, Lcom/alipay/euler/andfix/a/a;

    invoke-direct {p0, v3}, Lcom/alipay/euler/andfix/a/a;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/reflect/Constructor;)V
    .locals 5

    .line 180
    invoke-static {}, Lcom/alipay/euler/andfix/Compat;->getAndFixVM()Lcom/alipay/euler/andfix/AndFixVM;

    move-result-object v0

    .line 181
    sget-object v1, Lcom/alipay/euler/andfix/AndFixVM;->AOC:Lcom/alipay/euler/andfix/AndFixVM;

    const-string/jumbo v2, "makeConstructorPublic failed"

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/alipay/euler/andfix/AndFixVM;->ART:Lcom/alipay/euler/andfix/AndFixVM;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/alipay/euler/andfix/AndFix;->setConstructorPublic(Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    return-void

    .line 209
    :catchall_0
    move-exception p0

    .line 210
    new-instance v0, Lcom/alipay/euler/andfix/a/a;

    invoke-direct {v0, v2, p0}, Lcom/alipay/euler/andfix/a/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 182
    :cond_1
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_3

    .line 184
    :try_start_1
    const-string v0, "java.lang.reflect.AbstractMethod"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 185
    const-string v1, "artMethod"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 186
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 187
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 188
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 189
    const-string v3, "accessFlags"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 191
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 192
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_2

    .line 193
    or-int/2addr v1, v3

    .line 194
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 198
    :cond_2
    return-void

    .line 196
    :catchall_1
    move-exception p0

    .line 197
    new-instance v0, Lcom/alipay/euler/andfix/a/a;

    invoke-direct {v0, v2, p0}, Lcom/alipay/euler/andfix/a/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 201
    :cond_3
    :try_start_2
    invoke-static {p0}, Lcom/alipay/euler/andfix/AndFix;->setConstructorPublic(Ljava/lang/reflect/Constructor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 204
    return-void

    .line 202
    :catchall_2
    move-exception p0

    .line 203
    new-instance v0, Lcom/alipay/euler/andfix/a/a;

    invoke-direct {v0, v2, p0}, Lcom/alipay/euler/andfix/a/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Ljava/lang/reflect/Method;)V
    .locals 5

    .line 216
    invoke-static {}, Lcom/alipay/euler/andfix/Compat;->getAndFixVM()Lcom/alipay/euler/andfix/AndFixVM;

    move-result-object v0

    .line 217
    sget-object v1, Lcom/alipay/euler/andfix/AndFixVM;->AOC:Lcom/alipay/euler/andfix/AndFixVM;

    const-string/jumbo v2, "makeMethodPublic failed"

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/alipay/euler/andfix/AndFixVM;->ART:Lcom/alipay/euler/andfix/AndFixVM;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/alipay/euler/andfix/AndFix;->setMethodPublic(Ljava/lang/reflect/Method;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    return-void

    .line 245
    :catchall_0
    move-exception p0

    .line 246
    new-instance v0, Lcom/alipay/euler/andfix/a/a;

    invoke-direct {v0, v2, p0}, Lcom/alipay/euler/andfix/a/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 218
    :cond_1
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_3

    .line 220
    :try_start_1
    const-string v0, "java.lang.reflect.AbstractMethod"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 221
    const-string v1, "artMethod"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 222
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 223
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 224
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 225
    const-string v3, "accessFlags"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 227
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 228
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_2

    .line 229
    or-int/2addr v1, v3

    .line 230
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 234
    :cond_2
    return-void

    .line 232
    :catchall_1
    move-exception p0

    .line 233
    new-instance v0, Lcom/alipay/euler/andfix/a/a;

    invoke-direct {v0, v2, p0}, Lcom/alipay/euler/andfix/a/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 237
    :cond_3
    :try_start_2
    invoke-static {p0}, Lcom/alipay/euler/andfix/AndFix;->setMethodPublic(Ljava/lang/reflect/Method;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 240
    return-void

    .line 238
    :catchall_2
    move-exception p0

    .line 239
    new-instance v0, Lcom/alipay/euler/andfix/a/a;

    invoke-direct {v0, v2, p0}, Lcom/alipay/euler/andfix/a/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(ZLjava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;)V"
        }
    .end annotation

    .line 89
    if-eqz p0, :cond_0

    .line 90
    :try_start_0
    invoke-static {}, Lcom/alipay/euler/andfix/b/b;->a()Lcom/alipay/euler/andfix/b/b;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/alipay/euler/andfix/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-static {p1, p2}, Lcom/alipay/euler/andfix/AndFix;->replaceConstructor(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;)V

    .line 94
    :goto_0
    invoke-static {p1}, Lcom/alipay/euler/andfix/AndFix;->a(Ljava/lang/reflect/Constructor;)V

    .line 95
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/alipay/euler/andfix/AndFix;->c(Ljava/lang/Class;)V

    .line 96
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/alipay/euler/andfix/AndFix;->c(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    return-void

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    new-instance p1, Lcom/alipay/euler/andfix/a/a;

    const-string p2, "addReplaceConstructor failed"

    invoke-direct {p1, p2, p0}, Lcom/alipay/euler/andfix/a/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static a(ZLjava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 74
    if-eqz p0, :cond_0

    .line 75
    :try_start_0
    invoke-static {}, Lcom/alipay/euler/andfix/b/b;->a()Lcom/alipay/euler/andfix/b/b;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/alipay/euler/andfix/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {p1, p2}, Lcom/alipay/euler/andfix/AndFix;->replaceMethod(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 79
    :goto_0
    invoke-static {p1}, Lcom/alipay/euler/andfix/AndFix;->a(Ljava/lang/reflect/Method;)V

    .line 80
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/alipay/euler/andfix/AndFix;->c(Ljava/lang/Class;)V

    .line 81
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/alipay/euler/andfix/AndFix;->c(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    return-void

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    new-instance p1, Lcom/alipay/euler/andfix/a/a;

    const-string p2, "addReplaceMethod failed"

    invoke-direct {p1, p2, p0}, Lcom/alipay/euler/andfix/a/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static a()Z
    .locals 5

    .line 317
    invoke-static {}, Lcom/alipay/euler/andfix/Compat;->getAndFixVM()Lcom/alipay/euler/andfix/AndFixVM;

    move-result-object v0

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getAndFixVM: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/euler/andfix/Compat;->getAndFixVM()Lcom/alipay/euler/andfix/AndFixVM;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mytest"

    invoke-static {v2, v1}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/euler/andfix/Compat;->isX86CPU()Z

    move-result v2

    if-nez v2, :cond_0

    .line 321
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "andfix"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "andfix_x86"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->loadLibrary(Ljava/lang/String;)V

    .line 326
    :goto_0
    const-string v2, "java.vm.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 327
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 330
    sget-object v4, Lcom/alipay/euler/andfix/AndFixVM;->Lemur:Lcom/alipay/euler/andfix/AndFixVM;

    if-ne v0, v4, :cond_1

    .line 332
    const/4 v0, 0x0

    goto :goto_1

    .line 333
    :cond_1
    sget-object v4, Lcom/alipay/euler/andfix/AndFixVM;->AOC:Lcom/alipay/euler/andfix/AndFixVM;

    if-ne v0, v4, :cond_2

    .line 335
    const/4 v0, 0x3

    .line 336
    invoke-static {v3, v2}, Lcom/alipay/euler/andfix/AndFix;->a(ILjava/lang/String;)I

    move-result v3

    goto :goto_1

    .line 338
    :cond_2
    sget-object v2, Lcom/alipay/euler/andfix/AndFixVM;->ART:Lcom/alipay/euler/andfix/AndFixVM;

    if-ne v0, v2, :cond_3

    .line 340
    const/4 v0, 0x2

    goto :goto_1

    .line 343
    :cond_3
    const/4 v0, 0x1

    .line 345
    :goto_1
    invoke-static {v0, v3}, Lcom/alipay/euler/andfix/AndFix;->setup(II)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 346
    :catchall_0
    move-exception v0

    .line 347
    const-string v2, "AndFix"

    const-string v3, "loadLibrary & setup failed."

    invoke-static {v2, v3, v0}, Lcom/alipay/euler/andfix/log/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 349
    return v1
.end method

.method public static b(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 261
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 262
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 261
    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 264
    invoke-static {p0}, Lcom/alipay/euler/andfix/AndFix;->c(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    return-object p0

    .line 266
    :catchall_0
    move-exception p0

    .line 267
    new-instance v0, Lcom/alipay/euler/andfix/a/a;

    const-string v1, "initTargetClass failed"

    invoke-direct {v0, v1, p0}, Lcom/alipay/euler/andfix/a/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static b()V
    .locals 0

    .line 353
    invoke-static {}, Lcom/alipay/euler/andfix/AndFix;->rollbackMethods()V

    .line 354
    return-void
.end method

.method public static declared-synchronized c()V
    .locals 4

    const-class v0, Lcom/alipay/euler/andfix/AndFix;

    monitor-enter v0

    .line 359
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    sget-boolean v1, Lcom/alipay/euler/andfix/AndFix;->a:Z

    if-eqz v1, :cond_1

    .line 364
    const-string v1, "AndFix"

    const-string/jumbo v2, "tryStopArtJit: already triggered"

    invoke-static {v1, v2}, Lcom/alipay/euler/andfix/log/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 365
    monitor-exit v0

    return-void

    .line 367
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/alipay/euler/andfix/AndFix;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 369
    :try_start_2
    invoke-static {}, Lcom/alipay/jitdealer/JitDealer;->disableJitCompileMethod()V

    .line 370
    const-string v1, "AndFix"

    const-string/jumbo v2, "tryStopArtJit success"

    invoke-static {v1, v2}, Lcom/alipay/euler/andfix/log/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 373
    monitor-exit v0

    return-void

    .line 371
    :catchall_0
    move-exception v1

    .line 372
    :try_start_3
    const-string v2, "AndFix"

    const-string/jumbo v3, "tryStopArtJit error"

    invoke-static {v2, v3, v1}, Lcom/alipay/euler/andfix/log/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 374
    monitor-exit v0

    return-void

    .line 360
    :cond_2
    :goto_0
    :try_start_4
    const-string v1, "AndFix"

    const-string/jumbo v2, "tryStopArtJit: no support"

    invoke-static {v1, v2}, Lcom/alipay/euler/andfix/log/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 361
    monitor-exit v0

    return-void

    .line 358
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static c(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 278
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    .line 279
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 280
    invoke-static {v2}, Lcom/alipay/euler/andfix/AndFix;->setFieldFlag(Ljava/lang/reflect/Field;)V

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    :cond_0
    return-void
.end method

.method private static native replaceConstructor(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;)V
.end method

.method private static native replaceMethod(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
.end method

.method private static native rollbackMethods()V
.end method

.method private static native setClassPublic(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method

.method private static native setClassPublicFromField(Ljava/lang/Object;)V
.end method

.method private static native setClassPublicFromMethod(Ljava/lang/Object;)V
.end method

.method private static native setConstructorPublic(Ljava/lang/reflect/Constructor;)V
.end method

.method private static native setFieldFlag(Ljava/lang/reflect/Field;)V
.end method

.method private static native setMethodPublic(Ljava/lang/reflect/Method;)V
.end method

.method private static native setup(II)Z
.end method
