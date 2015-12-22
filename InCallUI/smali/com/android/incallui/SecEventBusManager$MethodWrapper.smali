.class final Lcom/android/incallui/SecEventBusManager$MethodWrapper;
.super Ljava/lang/Object;
.source "SecEventBusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecEventBusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MethodWrapper"
.end annotation


# instance fields
.field public after:Ljava/lang/String;

.field public method:Ljava/lang/reflect/Method;

.field public object:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/SecEventBusManager$MethodWrapper;->object:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/incallui/SecEventBusManager$MethodWrapper;->method:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lcom/android/incallui/SecEventBusManager$MethodWrapper;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/SecEventBusManager$MethodWrapper;->method:Ljava/lang/reflect/Method;

    const-class v2, Lcom/android/incallui/SecEventBus;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecEventBusManager$MethodWrapper;->method:Ljava/lang/reflect/Method;

    const-class v2, Lcom/android/incallui/SecEventBus;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecEventBus;

    invoke-interface {v0}, Lcom/android/incallui/SecEventBus;->after()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecEventBusManager$MethodWrapper;->after:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getParamType()Ljava/lang/Class;
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/SecEventBusManager$MethodWrapper;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0
.end method
