.class public final Lcom/sec/android/app/launcher/views/ViewDefs$VIEW_MODES;
.super Ljava/lang/Object;
.source "ViewDefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/views/ViewDefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VIEW_MODES"
.end annotation


# static fields
.field public static final APP_REMOVE_MODE:I = 0x7f0b00d9

.field public static final APP_SELECTION_MODE:I = 0x7f0b00da

.field public static final APP_STAND_MODE:I = 0x1

.field public static final CLOSED_FOLDER_MODE:I = 0x7f0b00e0

.field public static final DRAG_MODE:I = 0x7f0b00db

.field public static final HOT_SEAT_MODE:I = 0x7f0b00dc

.field public static final HOT_SEAT_MODE_EXTRA:I = 0x7f0b00de

.field public static final HOT_SEAT_MODE_SMALL:I = 0x7f0b00dd

.field public static final HOT_SEAT_MODE_SMALL_EXTRA:I = 0x7f0b00df

.field public static final ICON_MODE:I = 0x7f0b00d7

.field public static final ICON_MODE_APPS:I = 0x7f0b00e4

.field public static final ICON_MODE_APPS_SMALL:I = 0x7f0b00e5

.field public static final ICON_MODE_SMALL:I = 0x7f0b00d8

.field public static final MODES_MAP:[I

.field public static final OPEN_FOLDER_MODE:I = 0x7f0b00e1

.field public static final OPEN_FOLDER_REMOVE_MODE:I = 0x7f0b00e2

.field public static final OPEN_FOLDER_SELECT_MODE:I = 0x7f0b00e3

.field public static final UNDEFINED_MODE:I = -0x1

.field public static final WIDGET_MODE:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/launcher/views/ViewDefs$VIEW_MODES;->MODES_MAP:[I

    return-void

    :array_0
    .array-data 4
        0x7f0b00d7
        0x1
        0x7f0b00dc
        0x3
        0x7f0b00e0
        0x7f0b00e1
        0x7f0b00db
        0x7f0b00da
        0x7f0b00d9
        0x7f0b00e3
        0x7f0b00e4
        0x7f0b00dd
        0x7f0b00d8
        0x7f0b00de
        0x7f0b00df
        0x7f0b00e5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
