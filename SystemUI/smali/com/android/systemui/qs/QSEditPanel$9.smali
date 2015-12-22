.class Lcom/android/systemui/qs/QSEditPanel$9;
.super Ljava/lang/Object;
.source "QSEditPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSEditPanel;->updateTextResources()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSEditPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSEditPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSEditPanel$9;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel$9;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSEditPanel;->resetPanel()V

    return-void
.end method
