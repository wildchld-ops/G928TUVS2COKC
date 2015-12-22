.class public final enum Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;
.super Ljava/lang/Enum;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HomescreenMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

.field public static final enum DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

.field public static final enum NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

.field public static final enum PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

.field public static final enum RESIZE_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    const-string v1, "NORMAL_MODE"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    new-instance v0, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    const-string v1, "DRAG_MODE"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    new-instance v0, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    const-string v1, "RESIZE_MODE"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->RESIZE_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    new-instance v0, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    const-string v1, "PAGE_EDIT_MODE"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->RESIZE_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->$VALUES:[Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->$VALUES:[Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    invoke-virtual {v0}, [Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    return-object v0
.end method


# virtual methods
.method public dragEnabled()Z
    .locals 2

    sget-object v0, Lcom/sec/android/app/launcher/activities/HomeFragment$5;->$SwitchMap$com$sec$android$app$launcher$activities$HomeFragment$HomescreenMode:[I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
