.class public abstract Lcom/squareup/wire/OptimizedMessage;
.super Lcom/squareup/wire/Message;
.source "OptimizedMessage.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 53
    return-void
.end method

.method protected constructor <init>(Lcom/squareup/wire/Message;)V
    .locals 5
    .param p1, "message"    # Lcom/squareup/wire/Message;

    .line 26
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 28
    if-nez p1, :cond_0

    .line 29
    return-void

    .line 32
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 33
    .local v0, "fs":[Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 35
    :try_start_0
    aget-object v2, v0, v1

    .line 36
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 37
    const-class v3, Lcom/squareup/wire/ProtoField;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/squareup/wire/ProtoField;

    .line 39
    .local v3, "pf":Lcom/squareup/wire/ProtoField;
    if-nez v3, :cond_1

    .line 40
    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 44
    .local v4, "otherVal":Ljava/lang/Object;
    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "pf":Lcom/squareup/wire/ProtoField;
    .end local v4    # "otherVal":Ljava/lang/Object;
    nop

    .line 33
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    :catch_0
    move-exception v2

    .line 46
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 49
    .end local v1    # "i":I
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :cond_2
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "other"    # Ljava/lang/Object;

    .line 80
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 81
    :cond_0
    instance-of v1, p1, Lcom/squareup/wire/Message;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 82
    :cond_1
    const/4 v1, 0x0

    .line 83
    .local v1, "beEquals":Z
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 84
    .local v3, "fs":[Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_5

    .line 86
    :try_start_0
    aget-object v5, v3, v4

    .line 87
    .local v5, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 88
    const-class v6, Lcom/squareup/wire/ProtoField;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/squareup/wire/ProtoField;

    .line 90
    .local v6, "pf":Lcom/squareup/wire/ProtoField;
    if-nez v6, :cond_2

    .line 91
    goto :goto_2

    .line 94
    :cond_2
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 95
    .local v7, "otherVal":Ljava/lang/Object;
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 96
    .local v8, "thisVal":Ljava/lang/Object;
    if-eqz v1, :cond_3

    invoke-virtual {p0, v7, v8}, Lcom/squareup/wire/OptimizedMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    move v1, v9

    .line 97
    if-nez v1, :cond_4

    .line 98
    return v2

    .line 102
    .end local v5    # "f":Ljava/lang/reflect/Field;
    .end local v6    # "pf":Lcom/squareup/wire/ProtoField;
    .end local v7    # "otherVal":Ljava/lang/Object;
    .end local v8    # "thisVal":Ljava/lang/Object;
    :cond_4
    nop

    .line 84
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 104
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v4    # "i":I
    :cond_5
    return v1
.end method

.method public fillTagValue(ILjava/lang/Object;)Lcom/squareup/wire/Message;
    .locals 5
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 57
    .local v0, "fs":[Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 59
    :try_start_0
    aget-object v2, v0, v1

    .line 60
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 61
    const-class v3, Lcom/squareup/wire/ProtoField;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/squareup/wire/ProtoField;

    .line 63
    .local v3, "pf":Lcom/squareup/wire/ProtoField;
    if-nez v3, :cond_0

    .line 64
    goto :goto_1

    .line 66
    :cond_0
    invoke-interface {v3}, Lcom/squareup/wire/ProtoField;->tag()I

    move-result v4

    if-ne p1, v4, :cond_1

    .line 67
    invoke-virtual {v2, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    return-object p0

    .line 73
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "pf":Lcom/squareup/wire/ProtoField;
    :cond_1
    nop

    .line 57
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :catch_0
    move-exception v2

    .line 72
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 75
    .end local v1    # "i":I
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :cond_2
    return-object p0
.end method

.method public hashCode()I
    .locals 8

    .line 109
    iget v0, p0, Lcom/squareup/wire/OptimizedMessage;->hashCode:I

    .line 110
    .local v0, "result":I
    if-nez v0, :cond_5

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 112
    .local v1, "fs":[Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 114
    :try_start_0
    aget-object v3, v1, v2

    .line 115
    .local v3, "f":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 116
    const-class v5, Lcom/squareup/wire/ProtoField;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/squareup/wire/ProtoField;

    .line 118
    .local v5, "pf":Lcom/squareup/wire/ProtoField;
    if-nez v5, :cond_0

    .line 119
    goto :goto_3

    .line 121
    :cond_0
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 122
    .local v6, "val":Ljava/lang/Object;
    if-nez v2, :cond_2

    .line 123
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    add-int/2addr v0, v4

    goto :goto_2

    .line 125
    :cond_2
    mul-int/lit8 v7, v0, 0x25

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/2addr v7, v4

    move v0, v7

    .line 129
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v5    # "pf":Lcom/squareup/wire/ProtoField;
    .end local v6    # "val":Ljava/lang/Object;
    :goto_2
    nop

    .line 112
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    :catch_0
    move-exception v3

    .line 128
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 131
    .end local v2    # "i":I
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :cond_4
    iput v0, p0, Lcom/squareup/wire/OptimizedMessage;->hashCode:I

    .line 133
    .end local v1    # "fs":[Ljava/lang/reflect/Field;
    :cond_5
    return v0
.end method
