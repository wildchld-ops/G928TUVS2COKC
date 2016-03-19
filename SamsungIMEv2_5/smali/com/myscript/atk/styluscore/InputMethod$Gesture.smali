.class public final Lcom/myscript/atk/styluscore/InputMethod$Gesture;
.super Ljava/lang/Object;
.source "InputMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/myscript/atk/styluscore/InputMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Gesture"
.end annotation


# static fields
.field public static final AllGestures:I = 0xffff

.field public static final AngleGesture:I = 0x8000

.field public static final BackspaceGesture:I = 0x2

.field public static final DashGestures:I = 0x200

.field public static final EraseGesture:I = 0x40

.field public static final InsertGesture:I = 0x10

.field public static final JoinGesture:I = 0x20

.field public static final JunctionGesture:I = 0x800

.field public static final LengthGesture:I = 0x4000

.field public static final NoGestures:I = 0x0

.field public static final OverwriteGesture:I = 0x100

.field public static final ParallelGesture:I = 0x2000

.field public static final PerpendicularGesture:I = 0x1000

.field public static final ReturnGesture:I = 0x4

.field public static final SelectionGesture:I = 0x80

.field public static final SingleTapGesture:I = 0x8

.field public static final SpaceGesture:I = 0x1

.field public static final UnderlineGesture:I = 0x400


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
