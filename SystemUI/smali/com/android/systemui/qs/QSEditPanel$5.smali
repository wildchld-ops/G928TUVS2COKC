.class Lcom/android/systemui/qs/QSEditPanel$5;
.super Ljava/lang/Object;
.source "QSEditPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSEditPanel;->addForegroundButtonViews(IILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSEditPanel;

.field final synthetic val$r:Lcom/android/systemui/qs/QSEditPanel$TileRecord;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$TileRecord;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    iput-object p2, p0, Lcom/android/systemui/qs/QSEditPanel$5;->val$r:Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel$5;->val$r:Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTile;->click()V

    return-void
.end method
