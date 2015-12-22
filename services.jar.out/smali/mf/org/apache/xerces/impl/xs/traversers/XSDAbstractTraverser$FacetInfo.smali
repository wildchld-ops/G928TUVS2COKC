.class final Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;
.super Ljava/lang/Object;
.source "XSDAbstractTraverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FacetInfo"
.end annotation


# instance fields
.field final fFixedFacets:S

.field final fPresentFacets:S

.field final facetdata:Lmf/org/apache/xerces/impl/dv/XSFacets;

.field final nodeAfterFacets:Lmf/org/w3c/dom/Element;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/impl/dv/XSFacets;Lmf/org/w3c/dom/Element;SS)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->facetdata:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->nodeAfterFacets:Lmf/org/w3c/dom/Element;

    iput-short p3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->fPresentFacets:S

    iput-short p4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->fFixedFacets:S

    return-void
.end method
