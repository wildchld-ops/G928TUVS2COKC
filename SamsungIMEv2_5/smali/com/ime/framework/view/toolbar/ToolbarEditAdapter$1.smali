.class Lcom/ime/framework/view/toolbar/ToolbarEditAdapter$1;
.super Ljava/lang/Object;
.source "ToolbarEditAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;->getOnClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter$1;->this$0:Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "SamsungIME_UnifiedIME"

    const-string v1, "ToolbarEditAdapter OnClickListener called, no action"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
