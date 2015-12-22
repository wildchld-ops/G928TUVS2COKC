.class Lcom/android/systemui/qs/tiles/ToddlerModeTile$4;
.super Ljava/lang/Object;
.source "ToddlerModeTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/ToddlerModeTile;->showConfirmPopup(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ToddlerModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ToddlerModeTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/ToddlerModeTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string v0, "ToddlerModeTile"

    const-string v1, "showConfirmPopup() - Negative onClick mode: ok"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
