.class public Lcom/mpaas/project/aar/convert/converter/FinalR;
.super Ljava/lang/Object;
.source "FinalR.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public static invokeFinalRInit()Ljava/lang/Class;
    .locals 5

    .line 18
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.mpaas.project.aar.convert.converter.FinalRInit"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 19
    .local v1, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "getRClass"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 20
    .local v2, "getRClass":Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 21
    .end local v1    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "getRClass":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 22
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public static invokeRInnerArray(Ljava/lang/Class;Ljava/lang/String;)[I
    .locals 1
    .param p0, "value"    # Ljava/lang/Class;
    .param p1, "valueName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    return-object v0
.end method

.method public static invokeRInnerClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "R"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 31
    .local v0, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-object v0
.end method

.method public static invokeRInnerClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "R"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 36
    .local v0, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-object v0
.end method

.method public static invokeRInnerClassArray(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "valueName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    invoke-static {}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeFinalRInit()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "targetClassName":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerArray(Ljava/lang/Class;Ljava/lang/String;)[I

    move-result-object v1

    return-object v1
.end method

.method public static invokeRInnerClassArrayWithOutException(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "valueName"    # Ljava/lang/String;

    .line 83
    :try_start_0
    invoke-static {p0, p1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassArray(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public static invokeRInnerClassArrayWithOutExceptionBuild(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "valueName"    # Ljava/lang/String;

    .line 95
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string v1, "com.mpaas.project.aar.convert.converter.FinalR.invokeRInnerClassArrayWithOutException(\"%s\",\"%s\")"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static invokeRInnerClassInt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "valueName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    invoke-static {}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeFinalRInit()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "targetClassName":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerIntValue(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static invokeRInnerClassIntWithOutException(Ljava/lang/Class;Ljava/lang/String;)I
    .locals 1
    .param p0, "className"    # Ljava/lang/Class;
    .param p1, "valueName"    # Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "valueName"    # Ljava/lang/String;

    .line 59
    :try_start_0
    invoke-static {p0, p1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, -0x1

    return v0
.end method

.method public static invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "valueName"    # Ljava/lang/String;

    .line 68
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".R"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "R":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerIntValue(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 70
    .end local v0    # "R":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, -0x1

    return v0
.end method

.method public static invokeRInnerClassIntWithOutExceptionBuild(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "valueName"    # Ljava/lang/String;

    .line 91
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string v1, "com.mpaas.project.aar.convert.converter.FinalR.invokeRInnerClassIntWithOutException(\"%s\",\"%s\")"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static invokeRInnerIntValue(Ljava/lang/Class;Ljava/lang/String;)I
    .locals 1
    .param p0, "value"    # Ljava/lang/Class;
    .param p1, "valueName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10
    const-string v0, "com.mpaas.demo"

    .line 11
    .local v0, "pkg":Ljava/lang/String;
    const-string v1, "anim"

    .line 12
    .local v1, "type":Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 13
    return-void
.end method
