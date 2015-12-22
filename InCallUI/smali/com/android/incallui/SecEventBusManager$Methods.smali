.class final Lcom/android/incallui/SecEventBusManager$Methods;
.super Ljava/lang/Object;
.source "SecEventBusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecEventBusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Methods"
.end annotation


# instance fields
.field public methodMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lcom/android/incallui/SecEventBusManager$MethodWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/incallui/SecEventBusManager$Methods;->methodMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    const-class v6, Lcom/android/incallui/SecEventBus;

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v5, Lcom/android/incallui/SecEventBusManager$MethodWrapper;

    invoke-direct {v5, p1, v3}, Lcom/android/incallui/SecEventBusManager$MethodWrapper;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    invoke-virtual {v5}, Lcom/android/incallui/SecEventBusManager$MethodWrapper;->getParamType()Ljava/lang/Class;

    move-result-object v4

    if-nez v4, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/incallui/SecEventBusManager$Methods;->methodMap:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
