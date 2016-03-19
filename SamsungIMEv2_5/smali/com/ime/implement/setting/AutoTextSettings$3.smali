.class Lcom/ime/implement/setting/AutoTextSettings$3;
.super Ljava/lang/Object;
.source "AutoTextSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/AutoTextSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/AutoTextSettings;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/AutoTextSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/AutoTextSettings$3;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings$3;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    invoke-virtual {v0, p2}, Lcom/ime/implement/setting/AutoTextSettings;->showAddPopupDialog(Landroid/view/View;)V

    return-void
.end method
