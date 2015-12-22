.class Lcom/android/incallui/SecTabletCallCardView$CallStateCache;
.super Ljava/lang/Object;
.source "SecTabletCallCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecTabletCallCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallStateCache"
.end annotation


# instance fields
.field connectionIcon:Landroid/graphics/drawable/Drawable;

.field connectionLabel:Ljava/lang/String;

.field disconnectCause:Landroid/telecom/DisconnectCause;

.field gatewayNumber:Ljava/lang/String;

.field sessionModificationState:I

.field state:I

.field videoState:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
