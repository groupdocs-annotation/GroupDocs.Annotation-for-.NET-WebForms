using GroupDocs.Annotation.WebForms.Products.Common.Entity.Web;

namespace GroupDocs.Annotation.WebForms.Products.Annotation.Entity.Web
{
    /// <summary>
    /// SignaturePostedDataEntity
    /// </summary>
    public class AnnotationPostedDataEntity : PostedDataEntity
    {
        public int pageNumber { get; set; }
        public AnnotationDataEntity[] annotationsData { get; set;}
    }
}