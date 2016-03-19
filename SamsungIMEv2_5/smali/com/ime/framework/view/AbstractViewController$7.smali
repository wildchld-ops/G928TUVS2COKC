.class synthetic Lcom/ime/framework/view/AbstractViewController$7;
.super Ljava/lang/Object;
.source "AbstractViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/view/AbstractViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ime$framework$view$toolbar$ToolBarView$ContentViewType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;->values()[Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ime/framework/view/AbstractViewController$7;->$SwitchMap$com$ime$framework$view$toolbar$ToolBarView$ContentViewType:[I

    :try_start_0
    sget-object v0, Lcom/ime/framework/view/AbstractViewController$7;->$SwitchMap$com$ime$framework$view$toolbar$ToolBarView$ContentViewType:[I

    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;->TOOLBAR_SELECTION_CONTROL:Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;

    invoke-virtual {v1}, Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/ime/framework/view/AbstractViewController$7;->$SwitchMap$com$ime$framework$view$toolbar$ToolBarView$ContentViewType:[I

    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;->TOOLBAR_INPUT_MODE:Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;

    invoke-virtual {v1}, Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
