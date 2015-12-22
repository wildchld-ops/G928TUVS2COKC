.class Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityIdGenerator;
.super Ljava/lang/Object;
.source "Accessibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/Accessibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessibilityIdGenerator"
.end annotation


# static fields
.field private static final MAX_ID:I = 0x7ffffffe

.field private static final MIN_ID:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final cachedIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final inverseSearchMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final nextId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityIdGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityIdGenerator;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityIdGenerator;->cachedIds:Ljava/util/Map;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityIdGenerator;->inverseSearchMap:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityIdGenerator;->nextId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getObject(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 5

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityIdGenerator;->inverseSearchMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityIdGenerator;->inverseSearchMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    sget-object v2, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityIdGenerator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed weak reference for id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public static getOrGenerateId(Ljava/lang/Object;)I
    .locals 5

    if-nez p0, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    sget-object v2, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityIdGenerator;->cachedIds:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityIdGenerator;->nextId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    sget-object v2, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityIdGenerator;->inverseSearchMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityIdGenerator;->nextId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityIdGenerator;->cachedIds:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityIdGenerator;->inverseSearchMap:Landroid/util/SparseArray;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityIdGenerator;->nextId:Ljava/util/concurrent/atomic/AtomicInteger;

    const v3, 0x7ffffffe

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityIdGenerator;->TAG:Ljava/lang/String;

    const-string v3, "Rotated id generator"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v2, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityIdGenerator;->cachedIds:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method
