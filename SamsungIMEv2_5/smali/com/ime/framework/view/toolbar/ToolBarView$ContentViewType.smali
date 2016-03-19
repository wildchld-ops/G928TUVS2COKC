.class public final enum Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;
.super Ljava/lang/Enum;
.source "ToolBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/view/toolbar/ToolBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;

.field public static final enum TOOLBAR_INPUT_MODE:Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;

.field public static final enum TOOLBAR_SELECTION_CONTROL:Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;

    const-string v1, "TOOLBAR_INPUT_MODE"

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;->TOOLBAR_INPUT_MODE:Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;

    new-instance v0, Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;

    const-string v1, "TOOLBAR_SELECTION_CONTROL"

    invoke-direct {v0, v1, v3}, Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;->TOOLBAR_SELECTION_CONTROL:Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;

    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;->TOOLBAR_INPUT_MODE:Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;->TOOLBAR_SELECTION_CONTROL:Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;->$VALUES:[Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;
    .locals 1

    const-class v0, Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;

    return-object v0
.end method

.method public static values()[Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;
    .locals 1

    sget-object v0, Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;->$VALUES:[Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;

    invoke-virtual {v0}, [Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;

    return-object v0
.end method
