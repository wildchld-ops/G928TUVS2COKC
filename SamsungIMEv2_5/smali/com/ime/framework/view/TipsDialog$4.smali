.class Lcom/ime/framework/view/TipsDialog$4;
.super Ljava/lang/Object;
.source "TipsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/view/TipsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/TipsDialog;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/TipsDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/TipsDialog$4;->this$0:Lcom/ime/framework/view/TipsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/TipsDialog$4;->this$0:Lcom/ime/framework/view/TipsDialog;

    # getter for: Lcom/ime/framework/view/TipsDialog;->mMotionTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/ime/framework/view/TipsDialog;->access$200(Lcom/ime/framework/view/TipsDialog;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object v0, p0, Lcom/ime/framework/view/TipsDialog$4;->this$0:Lcom/ime/framework/view/TipsDialog;

    # getter for: Lcom/ime/framework/view/TipsDialog;->mMovingTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/ime/framework/view/TipsDialog;->access$300(Lcom/ime/framework/view/TipsDialog;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method
