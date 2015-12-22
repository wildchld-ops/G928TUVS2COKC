.class Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$SpanCountCalculatorRoundDown;
.super Ljava/lang/Object;
.source "WorkspaceSpanCalculator.java"

# interfaces
.implements Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$SpanCountCalculator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpanCountCalculatorRoundDown"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$SpanCountCalculatorRoundDown;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanCount(III)I
    .locals 4

    add-int v1, p1, p3

    add-int v0, p2, p3

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    div-int v2, v1, v0

    :cond_0
    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3
.end method
