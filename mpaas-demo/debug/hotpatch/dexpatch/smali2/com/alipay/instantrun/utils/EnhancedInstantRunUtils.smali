.class public Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;
.super Ljava/lang/Object;
.source "EnhancedInstantRunUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IR.EnhancedInstantRunUtils"

.field public static isThrowable:Z

.field private static sClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->isThrowable:Z

    .line 18
    const-class v0, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->sClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameterTypes"    # [Ljava/lang/Class;
    .param p3, "declaringClass"    # Ljava/lang/Class;

    const/4 v0, 0x0

    .line 57
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    :try_start_0
    invoke-virtual {p3, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return-object v1

    .line 75
    :catch_0
    move-exception v1

    goto :goto_3

    .line 59
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .local v1, "clazz":Ljava/lang/Class;
    :goto_1
    if-eqz v1, :cond_4

    .line 61
    :try_start_1
    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 62
    move-object v0, v2

    if-eqz v2, :cond_3

    .line 63
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_2

    .line 64
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    :cond_2
    return-object v0

    .line 69
    :cond_3
    goto :goto_2

    .line 68
    :catch_1
    move-exception v2

    .line 59
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 79
    .end local v1    # "clazz":Ljava/lang/Class;
    :cond_4
    :goto_3
    sget-boolean v1, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->isThrowable:Z

    if-nez v1, :cond_5

    .line 82
    const/4 v1, 0x0

    return-object v1

    .line 80
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getDeclaredMethod error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   parameterTypes   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " targetObject "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getFieldValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "cl"    # Ljava/lang/Class;

    .line 268
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->getReflectField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 269
    :catchall_0
    move-exception v0

    .line 270
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "IR.EnhancedInstantRunUtils"

    invoke-static {v1, v0}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 271
    sget-boolean v1, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->isThrowable:Z

    if-nez v1, :cond_0

    .line 275
    .end local v0    # "tr":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0

    .line 272
    .restart local v0    # "tr":Ljava/lang/Throwable;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getFieldValue  error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   instance   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getReflectField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "cl"    # Ljava/lang/Class;

    .line 279
    const-string v0, "Field "

    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 280
    sget-boolean v2, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->isThrowable:Z

    if-nez v2, :cond_0

    .line 282
    return-object v1

    .line 281
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " declaring class is null "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 285
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-nez v2, :cond_3

    .line 287
    :try_start_0
    invoke-virtual {p2, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 288
    .local v1, "field":Ljava/lang/reflect/Field;
    move-object v1, v2

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_2

    .line 289
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :cond_2
    return-object v1

    .line 292
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 294
    nop

    .line 298
    new-instance v1, Ljava/lang/NoSuchFieldException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not found in "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 296
    :cond_3
    invoke-virtual {p2, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method private static getReflectStaticField(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/Class;

    .line 317
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 318
    .local v1, "field":Ljava/lang/reflect/Field;
    move-object v1, v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_0
    return-object v1

    .line 322
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v1, "IR.EnhancedInstantRunUtils"

    invoke-static {v1, v0}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 325
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    new-instance v0, Ljava/lang/NoSuchFieldException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getStaticFieldValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/Class;

    .line 304
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->getReflectStaticField(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v1

    move-object v2, v0

    .line 305
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 306
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :catchall_0
    move-exception v1

    .line 307
    .local v1, "tr":Ljava/lang/Throwable;
    const-string v2, "IR.EnhancedInstantRunUtils"

    invoke-static {v2, v1}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 308
    sget-boolean v2, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->isThrowable:Z

    if-nez v2, :cond_0

    .line 312
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-object v0

    .line 309
    .restart local v1    # "tr":Ljava/lang/Throwable;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getStaticFieldValue  error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   clazz   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static invokeReflectConstruct(Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "parameter"    # [Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Class;

    .line 29
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    move-object v3, v1

    .line 30
    .local v3, "clazz":Ljava/lang/Class;
    invoke-virtual {v2, p3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    move-object v4, v1

    .line 31
    .local v4, "constructor":Ljava/lang/reflect/Constructor;
    move-object v4, v2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 32
    invoke-virtual {v4, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 33
    .end local v3    # "clazz":Ljava/lang/Class;
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;
    :catchall_0
    move-exception v0

    .line 34
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v2, "IR.EnhancedInstantRunUtils"

    invoke-static {v2, v0}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .end local v0    # "tr":Ljava/lang/Throwable;
    sget-boolean v0, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->isThrowable:Z

    if-nez v0, :cond_0

    .line 39
    return-object v1

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invokeReflectConstruct error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   parameter   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static invokeReflectConstruct(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "parameter"    # [Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Class;

    .line 21
    sget-object v0, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->sClassLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    .line 22
    const-class v0, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->sClassLoader:Ljava/lang/ClassLoader;

    .line 24
    :cond_0
    sget-object v0, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->sClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, p0, p1, p2}, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->invokeReflectConstruct(Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static invokeReflectMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "targetObject"    # Ljava/lang/Object;
    .param p2, "parameters"    # [Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Class;
    .param p4, "declaringClass"    # Ljava/lang/Class;

    .line 44
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, p0, p3, p4}, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->getDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    move-object v2, v0

    .line 45
    .local v2, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 46
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v1

    .line 47
    .local v1, "tr":Ljava/lang/Throwable;
    const-string v2, "IR.EnhancedInstantRunUtils"

    invoke-static {v2, v1}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .end local v1    # "tr":Ljava/lang/Throwable;
    sget-boolean v1, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->isThrowable:Z

    if-nez v1, :cond_0

    .line 52
    return-object v0

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invokeReflectMethod error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   parameter   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " targetObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  args  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static invokeReflectStaticMethod(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "cl"    # Ljava/lang/Class;
    .param p2, "parameter"    # [Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Class;

    .line 87
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p0, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    move-object v2, v0

    .line 88
    .local v2, "method":Ljava/lang/reflect/Method;
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 89
    invoke-virtual {v2, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 90
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v1

    .line 91
    .local v1, "tr":Ljava/lang/Throwable;
    const-string v2, "IR.EnhancedInstantRunUtils"

    invoke-static {v2, v1}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    .end local v1    # "tr":Ljava/lang/Throwable;
    sget-boolean v1, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->isThrowable:Z

    if-nez v1, :cond_0

    .line 96
    return-object v0

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invokeReflectStaticMethod error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   class   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  args  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setFieldValue(Ljava/lang/String;Ljava/lang/Object;BLjava/lang/Class;)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "value"    # B
    .param p3, "cl"    # Ljava/lang/Class;

    .line 125
    :try_start_0
    invoke-static {p0, p1, p3}, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->getReflectField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setByte(Ljava/lang/Object;B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    return-void

    .line 126
    :catchall_0
    move-exception v0

    .line 127
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "IR.EnhancedInstantRunUtils"

    invoke-static {v1, v0}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    sget-boolean v1, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->isThrowable:Z

    if-nez v1, :cond_0

    .line 132
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void

    .line 129
    .restart local v0    # "tr":Ljava/lang/Throwable;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setFieldValue byte error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   target   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  value  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setFieldValue(Ljava/lang/String;Ljava/lang/Object;CLjava/lang/Class;)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "value"    # C
    .param p3, "cl"    # Ljava/lang/Class;

    .line 136
    :try_start_0
    invoke-static {p0, p1, p3}, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->getReflectField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setChar(Ljava/lang/Object;C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    return-void

    .line 137
    :catchall_0
    move-exception v0

    .line 138
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "IR.EnhancedInstantRunUtils"

    invoke-static {v1, v0}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    sget-boolean v1, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->isThrowable:Z

    if-nez v1, :cond_0

    .line 143
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void

    .line 140
    .restart local v0    # "tr":Ljava/lang/Throwable;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setFieldValue char error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   target   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  value  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setFieldValue(Ljava/lang/String;Ljava/lang/Object;DLjava/lang/Class;)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "value"    # D
    .param p4, "cl"    # Ljava/lang/Class;

    .line 147
    :try_start_0
    invoke-static {p0, p1, p4}, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->getReflectField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    return-void

    .line 148
    :catchall_0
    move-exception v0

    .line 149
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "IR.EnhancedInstantRunUtils"

    invoke-static {v1, v0}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    sget-boolean v1, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->isThrowable:Z

    if-nez v1, :cond_0

    .line 154
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void

    .line 151
    .restart local v0    # "tr":Ljava/lang/Throwable;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setFieldValue double error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   target   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  value  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setFieldValue(Ljava/lang/String;Ljava/lang/Object;FLjava/lang/Class;)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "value"    # F
    .param p3, "cl"    # Ljava/lang/Class;

    .line 158
    :try_start_0
    invoke-static {p0, p1, p3}, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->getReflectField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    return-void

    .line 159
    :catchall_0
    move-exception v0

    .line 160
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "IR.EnhancedInstantRunUtils"

    invoke-static {v1, v0}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    sget-boolean v1, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->isThrowable:Z

    if-nez v1, :cond_0

    .line 165
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void

    .line 162
    .restart local v0    # "tr":Ljava/lang/Throwable;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setFieldValue float error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   target   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  value  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setFieldValue(Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Class;)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "value"    # I
    .param p3, "cl"    # Ljava/lang/Class;

    .line 102
    :try_start_0
    invoke-static {p0, p1, p3}, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->getReflectField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    return-void

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "IR.EnhancedInstantRunUtils"

    invoke-static {v1, v0}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    sget-boolean v1, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->isThrowable:Z

    if-nez v1, :cond_0

    .line 110
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void

    .line 106
    .restart local v0    # "tr":Ljava/lang/Throwable;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setFieldValue int error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   target   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  value  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setFieldValue(Ljava/lang/String;Ljava/lang/Object;JLjava/lang/Class;)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "value"    # J
    .param p4, "cl"    # Ljava/lang/Class;

    .line 169
    :try_start_0
    invoke-static {p0, p1, p4}, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->getReflectField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    return-void

    .line 170
    :catchall_0
    move-exception v0

    .line 171
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "IR.EnhancedInstantRunUtils"

    invoke-static {v1, v0}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    sget-boolean v1, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->isThrowable:Z

    if-nez v1, :cond_0

    .line 176
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void

    .line 173
    .restart local v0    # "tr":Ljava/lang/Throwable;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setFieldValue long error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   target   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  value  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setFieldValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "cl"    # Ljava/lang/Class;

    .line 180
    :try_start_0
    invoke-static {p0, p1, p3}, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->getReflectField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    return-void

    .line 181
    :catchall_0
    move-exception v0

    .line 182
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "IR.EnhancedInstantRunUtils"

    invoke-static {v1, v0}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    sget-boolean v1, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->isThrowable:Z

    if-nez v1, :cond_0

    .line 187
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void

    .line 184
    .restart local v0    # "tr":Ljava/lang/Throwable;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setFieldValue Object error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   target   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  value  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setFieldValue(Ljava/lang/String;Ljava/lang/Object;SLjava/lang/Class;)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "value"    # S
    .param p3, "cl"    # Ljava/lang/Class;

    .line 191
    :try_start_0
    invoke-static {p0, p1, p3}, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->getReflectField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    return-void

    .line 192
    :catchall_0
    move-exception v0

    .line 193
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "IR.EnhancedInstantRunUtils"

    invoke-static {v1, v0}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    sget-boolean v1, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->isThrowable:Z

    if-nez v1, :cond_0

    .line 198
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void

    .line 195
    .restart local v0    # "tr":Ljava/lang/Throwable;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setFieldValue short error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   target   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  value  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setFieldValue(Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/Class;)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "value"    # Z
    .param p3, "cl"    # Ljava/lang/Class;

    .line 114
    :try_start_0
    invoke-static {p0, p1, p3}, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->getReflectField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    return-void

    .line 115
    :catchall_0
    move-exception v0

    .line 116
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "IR.EnhancedInstantRunUtils"

    invoke-static {v1, v0}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    sget-boolean v1, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->isThrowable:Z

    if-nez v1, :cond_0

    .line 121
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void

    .line 118
    .restart local v0    # "tr":Ljava/lang/Throwable;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setFieldValue boolean error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   target   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  value  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setStaticFieldValue(Ljava/lang/String;Ljava/lang/Class;D)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "value"    # D

    .line 235
    :try_start_0
    invoke-static {p0, p1}, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->getReflectStaticField(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p3}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    return-void

    .line 236
    :catchall_0
    move-exception v0

    .line 237
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "IR.EnhancedInstantRunUtils"

    invoke-static {v1, v0}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    sget-boolean v1, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->isThrowable:Z

    if-nez v1, :cond_0

    .line 242
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void

    .line 239
    .restart local v0    # "tr":Ljava/lang/Throwable;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setStaticFieldValue Object error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   Class   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  value  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setStaticFieldValue(Ljava/lang/String;Ljava/lang/Class;F)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "value"    # F

    .line 246
    :try_start_0
    invoke-static {p0, p1}, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->getReflectStaticField(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    return-void

    .line 247
    :catchall_0
    move-exception v0

    .line 248
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "IR.EnhancedInstantRunUtils"

    invoke-static {v1, v0}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    sget-boolean v1, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->isThrowable:Z

    if-nez v1, :cond_0

    .line 253
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void

    .line 250
    .restart local v0    # "tr":Ljava/lang/Throwable;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setStaticFieldValue float error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   Class   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  value  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setStaticFieldValue(Ljava/lang/String;Ljava/lang/Class;I)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "value"    # I

    .line 213
    :try_start_0
    invoke-static {p0, p1}, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->getReflectStaticField(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    return-void

    .line 214
    :catchall_0
    move-exception v0

    .line 215
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "IR.EnhancedInstantRunUtils"

    invoke-static {v1, v0}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    sget-boolean v1, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->isThrowable:Z

    if-nez v1, :cond_0

    .line 220
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void

    .line 217
    .restart local v0    # "tr":Ljava/lang/Throwable;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setStaticFieldValue int error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   Class   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  value  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setStaticFieldValue(Ljava/lang/String;Ljava/lang/Class;J)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "value"    # J

    .line 257
    :try_start_0
    invoke-static {p0, p1}, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->getReflectStaticField(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p3}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    return-void

    .line 258
    :catchall_0
    move-exception v0

    .line 259
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "IR.EnhancedInstantRunUtils"

    invoke-static {v1, v0}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    sget-boolean v1, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->isThrowable:Z

    if-nez v1, :cond_0

    .line 264
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void

    .line 261
    .restart local v0    # "tr":Ljava/lang/Throwable;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setStaticFieldValue long error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   Class   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  value  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setStaticFieldValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "value"    # Ljava/lang/Object;

    .line 202
    :try_start_0
    invoke-static {p0, p1}, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->getReflectStaticField(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    return-void

    .line 203
    :catchall_0
    move-exception v0

    .line 204
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "IR.EnhancedInstantRunUtils"

    invoke-static {v1, v0}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    sget-boolean v1, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->isThrowable:Z

    if-nez v1, :cond_0

    .line 209
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void

    .line 206
    .restart local v0    # "tr":Ljava/lang/Throwable;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setStaticFieldValue Object error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   Class   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  value  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setStaticFieldValue(Ljava/lang/String;Ljava/lang/Class;Z)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "value"    # Z

    .line 224
    :try_start_0
    invoke-static {p0, p1}, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->getReflectStaticField(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    return-void

    .line 225
    :catchall_0
    move-exception v0

    .line 226
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "IR.EnhancedInstantRunUtils"

    invoke-static {v1, v0}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    sget-boolean v1, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->isThrowable:Z

    if-nez v1, :cond_0

    .line 231
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void

    .line 228
    .restart local v0    # "tr":Ljava/lang/Throwable;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setStaticFieldValue boolean error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   Class   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  value  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
