<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
	<div>
		<a type="button" class="btn btn-primary btn-md" href="/new-patient">Add New Patient</a>
	</div>
	<br>
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3>List of Patients</h3>
		</div>
		<div class="panel-body">
			<table class="table table-striped">
				<thead>
					<tr>
					  <th width="15%"> Id</th>
                      <th width="15%">Name</th>
                      <th width="15%">Disease</th>
                      <th width="15%">Since</th>
                       <th width="10%">Patient Stats</th>
                       <th width="15%">Alert User</th>
                        <th width="15%">Actions</th>

					</tr>
				</thead>
				<tbody>
					<c:forEach items="${patients}" var="patient">
						<tr>
							<td>${patient.id}</td>
							<td>${patient.firstName} ${patient.lastName}</td>
							<td>${patient.disease}</td>
							<td>${patient.days}</td>

							<td>
							<a type="button" class="btn btn-success"
                            <a href="<c:url value='/${patient.id}/bar'/>">Patient Stats</a> </td>
                            <td><a href="mailto:${patient.email}">${patient.email}</a></td>
							<td><a type="button" class="btn btn-success"
								<a href="<c:url value='/${patient.id}'/>">Edit</a> </td>
								<td> <form action="/${patient.id}/delete" method="post" class="btn btn-success">
                                <input type="submit" value="Delete" />
                                 </form>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</div>
<%@ include file="common/footer.jspf"%>