.class public Lcom/alipay/euler/andfix/patch/b;
.super Ljava/lang/Object;
.source "PatchChecker.java"


# direct methods
.method public static a(Ljava/lang/reflect/Constructor;)V
    .locals 5

    .line 40
    nop

    .line 42
    nop

    .line 43
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 44
    nop

    .line 45
    const-string v1, "constructor is empty"

    const/4 v2, 0x0

    goto :goto_0

    .line 43
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 47
    :goto_0
    if-eqz v2, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1b

    if-lt v3, v4, :cond_1

    .line 48
    nop

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "apiLevel higher than 27 for cons: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 51
    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 54
    return-void

    .line 52
    :cond_2
    new-instance p0, Lcom/alipay/euler/andfix/a/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t fix constructor, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/euler/andfix/a/a;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/reflect/Method;)V
    .locals 5

    .line 18
    nop

    .line 20
    nop

    .line 21
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 22
    nop

    .line 23
    const-string/jumbo v1, "method is empty"

    const/4 v2, 0x0

    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 25
    :goto_0
    if-eqz v2, :cond_2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1b

    if-lt v3, v4, :cond_2

    .line 26
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 27
    nop

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "method is static: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 30
    nop

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "method is private: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 34
    :cond_2
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    .line 37
    return-void

    .line 35
    :cond_3
    new-instance p0, Lcom/alipay/euler/andfix/a/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t fix method, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/euler/andfix/a/a;-><init>(Ljava/lang/String;)V

    throw p0
.end method
